using MyCartApp1.BAL;
using MyCartApp1.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCartApp1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["p"].ToString());
            ProductBLL obj = new ProductBLL();
            Product pro=obj.GetProduct(id);
            labelforname.Text = pro.Name;
            Labelforcost.Text = pro.Cost.ToString();
            Labelfordiscription.Text=pro.Description;
         

            if (pro.ActualStock <= pro.MinStock) 
            { 
                ButtonforAddtocart.Visible = false;
                LabelQuanity.Visible = TextBoxforquanity.Visible=false;
            }
            
        }

        protected void ButtonforAddtocart_Click(object sender, EventArgs e)
        {
            Orders ord = new Orders
            {
                ProductId = int.Parse(Request.QueryString["p"].ToString()),
                ProductName = labelforname.Text,
                ProductCost = double.Parse(Labelforcost.Text),
                ProductQuntity = int.Parse(TextBoxforquanity.Text),
                ProductTotalCost = double.Parse(Labelforcost.Text) * int.Parse(TextBoxforquanity.Text)
            };
            OrdersBLL n = new OrdersBLL();
            n.AddOrder(ord);
            Response.Redirect("Cart.aspx");
        }
    }
}