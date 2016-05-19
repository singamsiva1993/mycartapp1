using MyCartApp1.BAL;
using MyCartApp1.BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCartApp1
{
    public partial class Cart : System.Web.UI.Page
    {
        OrdersBLL ob = new OrdersBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                GridView1.DataSource = OrdersBLL.orders;
                GridView1.DataBind();
                Label1.Text = ob.OrderTotal().ToString();
                Label2.Text = "0.00";
                Label3.Text = (ob.OrderTotal()-double.Parse(Label2.Text)).ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DiscountBLL dbl = new DiscountBLL();
            dbl.GetAllDiscounts();
            Discount d = dbl.GetDiscount(coupon.Text);
            float de = 0;
            if (d != null)
            {
                if (d.Count-d.CouponUsed > 0)
                {
                    de = (float)d.discount / 100;
                    Label2.Text=Decimal.Multiply(decimal.Parse(Label1.Text),(decimal)de).ToString();
                }
            }
            Label1.Text = ob.OrderTotal().ToString();
            //Label2.Text = disc.ToString();
            Label3.Text = (ob.OrderTotal() - double.Parse(Label2.Text)).ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id=int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            ob.DeleteOrder(id);
            GridView1.DataSource = OrdersBLL.orders;
            GridView1.DataBind();
            Label1.Text = ob.OrderTotal().ToString();
            Label2.Text = "0.00";
            Label3.Text = (ob.OrderTotal() - double.Parse(Label2.Text)).ToString();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox qty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtqty");
            ob.UpdateOrder(id, int.Parse(qty.Text));
            GridView1.DataSource = OrdersBLL.orders;
            GridView1.DataBind();
            Label1.Text = ob.OrderTotal().ToString();
            Label2.Text = "0.00";
            Label3.Text = (ob.OrderTotal() - double.Parse(Label2.Text)).ToString();
        }

    }
}