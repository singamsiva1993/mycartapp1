using MyCartApp1.DAL;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyCartApp1.BLL
{
    public class AddressBLL
    {
        DbCore db = new DbCore();
        internal int shippingUser(BAL.Address ad)
        {
            SqlParameter[] par ={
                           new SqlParameter("add1",ad.AddressLine1),
                           new SqlParameter("add2",ad.AddressLine2),
                           new SqlParameter("city",ad.City),
                           new SqlParameter("state",ad.State),
                           new SqlParameter("pin",ad.PinCode),
                           new SqlParameter("uid",ad.uid),
                           new SqlParameter("cid",ad.cid),
                           new SqlParameter("products",ad.Products),
                           new SqlParameter("pay_amt",ad.PayAmount),
                            };
            return db.CoreOps("spCreateOrder", par);

        }
    }
}