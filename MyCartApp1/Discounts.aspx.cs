using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyCartApp1.DAL;
using System.Data;
using System.Data.SqlClient;
using MyCartApp1.BAL;
using MyCartApp1.BLL;

namespace MyCartApp
{
    public partial class Discounts : System.Web.UI.Page
    {
        static DataTable datatable = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Discount disc = new Discount();
                DiscountBLL discount = new DiscountBLL();
                discount.GetAllDiscounts();
                GridView1.DataSource = DiscountBLL.discounts;
                GridView1.DataBind();            
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            Discount disc = new Discount();
            DiscountBLL discount = new DiscountBLL();
            disc.Coupon = txtcpncode.Text.ToString();
            disc.Count = Convert.ToInt32(txtcpnquantity.Text);
            disc.discount = Convert.ToInt32(txtcpndiscount.Text);
            disc.Validity = Convert.ToDateTime(txtcpnvaliditydate.Text);
            discount.InsertCoupons(disc);
            discount.GetAllDiscounts();
            GridView1.DataSource = DiscountBLL.discounts;
            GridView1.DataBind();  

           
                //DbCore dbcore = new DbCore();
                //string coupon_code1 = txtcpncode.Text.ToString();
                //int coupon_quantity1 = Convert.ToInt32(txtcpnquantity.Text);
                //int coupon_discount1 = Convert.ToInt32(txtcpndiscount.Text);
                //DateTime coupon_validity1 = Convert.ToDateTime(txtcpnvaliditydate.Text);
                //SqlParameter[] parameters = new SqlParameter[4];
                //parameters[0] = new SqlParameter("cpncode", coupon_code1);
                //parameters[1] = new SqlParameter("cpnquantity", coupon_quantity1);
                //parameters[2] = new SqlParameter("cpndiscount", coupon_discount1);
                //parameters[3] = new SqlParameter("cpnvaliditydate", coupon_validity1);

                //int value = dbcore.CoreOps("spinsertcoupons", parameters);


                //datatable = dbcore.GetTable("spgetcoupon");
                //GridView1.DataSource = datatable;
                //GridView1.DataBind();
           
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            //txtcpncode.Text = null;
            //txtcpndiscount.Text = "1";
            //txtcpnquantity.Text = "1";
            //txtcpnvaliditydate = null;

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Discount disc = new Discount();
            DiscountBLL discount = new DiscountBLL();
            disc.Id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            discount.DeleteCoupons(disc);
            discount.GetAllDiscounts();
            GridView1.DataSource = DiscountBLL.discounts;
            GridView1.DataBind();  



            //DbCore dbcore = new DbCore();
            //int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            //SqlParameter[] parameters = new SqlParameter[1];
            //parameters[0] = new SqlParameter("cpnid", id);
            //int value = dbcore.CoreOps("spdeletecoupons", parameters);
            //if (value > 0)
            //{
            //    datatable = dbcore.GetTable("spgetcoupon");
            //    GridView1.DataSource = datatable;
            //    GridView1.DataBind();
            //}
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            // Image img = (Image)GridView1.DataBind[e.Row].FindControl("Image1");
            GridView1.DataSource = DiscountBLL.discounts;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Discount disc = new Discount();
            DiscountBLL discount = new DiscountBLL();
            disc.Id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox cpnqty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            TextBox cpndiscount = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox cpnvalidity = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            disc.Count = Convert.ToInt32(cpnqty.Text);
            disc.discount = Convert.ToInt32(cpndiscount.Text);
            disc.Validity = Convert.ToDateTime(cpnvalidity.Text);
            discount.UpdateCoupons(disc);

            GridView1.EditIndex = -1; 
            discount.GetAllDiscounts();
            GridView1.DataSource = DiscountBLL.discounts;
            GridView1.DataBind();  



           // DbCore dbcore = new DbCore();
           // int cpnid = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
           //// Label cpncode = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
           // TextBox cpnqty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
           // TextBox cpndiscount = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
           // TextBox cpnvalidity = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");



           // SqlParameter[] parameters = new SqlParameter[4];
           // parameters[0] = new SqlParameter("cpnid", cpnid);
           // parameters[1] = new SqlParameter("cpnqty", Convert.ToInt32(cpnqty.Text));
           // parameters[2] = new SqlParameter("cpndiscount", Convert.ToInt32(cpndiscount.Text));
           // parameters[3] = new SqlParameter("cpnvalidity", Convert.ToDateTime(cpnvalidity.Text));



           // int value = dbcore.CoreOps("spUpdateCoupons", parameters);
           // if (value > 0)
           // {
           //     datatable = dbcore.GetTable("spgetcoupon");
           //     GridView1.DataSource = datatable;
           //     GridView1.DataBind();
           // }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DiscountBLL discount = new DiscountBLL();
            discount.GetAllDiscounts();
            GridView1.DataSource = DiscountBLL.discounts;
            GridView1.DataBind(); 


            //DbCore dbcore = new DbCore();
            //datatable = dbcore.GetTable("spgetcoupon");
            //GridView1.DataSource = datatable;
            //GridView1.DataBind();
        }
    }
}