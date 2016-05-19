using MyCartApp1.BAL;
using MyCartApp1.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace MyCartApp1.BLL
{
    public class DiscountBLL
    {
        public static List<Discount> discounts = null;
        public void GetAllDiscounts()
        {
            DbCore core = new DbCore();
            DataTable dt = core.GetTable("spGetAllCoupons");
            if (dt != null)
            {
                discounts = new List<Discount>();
                foreach (DataRow dr in dt.Rows)
                {
                    discounts.Add(new Discount
                    {
                        Id = int.Parse(dr["coupon_id"].ToString()),
                        Count = int.Parse(dr["coupon_quantity"].ToString()),
                        discount = int.Parse(dr["coupon_discount"].ToString()),
                        Coupon = dr["coupon_code"].ToString(),
                        Validity = DateTime.Parse(dr["coupon_validity"].ToString()),
                        CouponUsed = int.Parse(dr["coupon_used"].ToString())
                    });
                }
            }
        }
        public Discount GetDiscount(int id)
        {
            Discount disc = null;
            disc = discounts.FirstOrDefault(p => p.Id == id);
            return disc;
        }

        internal void UpdateCoupons(Discount disc)
        {
            DbCore dbcore = new DbCore();
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = new SqlParameter("cpnid", disc.Id);
            parameters[1] = new SqlParameter("cpnqty", disc.Count);
            parameters[2] = new SqlParameter("cpndiscount", disc.discount);
            parameters[3] = new SqlParameter("cpnvalidity ", disc.Validity);
            int value = dbcore.CoreOps("sp_updatecoupons", parameters);
            if (value > 0)
            {

            }
            DiscountBLL prd = new DiscountBLL();
        }

        internal void DeleteCoupons(Discount disc)
        {
            DbCore dbcore = new DbCore();
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = new SqlParameter("cpnid", disc.Id);
            int value = dbcore.CoreOps("sp_deletecoupons", parameters);
            if (value > 0)
            {

            }
        }

        internal void InsertCoupons(Discount disc)
        {
            DbCore dbcore = new DbCore();
            SqlParameter[] parameters = new SqlParameter[4];
            parameters[0] = new SqlParameter("cpncode", disc.Coupon);
            parameters[1] = new SqlParameter("cpnqty", disc.Count);
            parameters[2] = new SqlParameter("cpndiscount", disc.discount);
            parameters[3] = new SqlParameter("cpnvalidity", disc.Validity);
            int value = dbcore.CoreOps("sp_insertcoupons", parameters);
            if (value > 0)
            {

            }
        }

        internal Discount GetDiscount(string cp)
        {
            Discount disc = null;
            disc = discounts.FirstOrDefault(p => p.Coupon == cp);
            return disc;
        }
    }
}