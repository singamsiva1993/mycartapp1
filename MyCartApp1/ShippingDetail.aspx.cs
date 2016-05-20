using MyCartApp1.BLL;
using MyCartApp1.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCartApp1
{
    public partial class ShippingDetail : System.Web.UI.Page
    {
        AddressBLL bll = new AddressBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Convert.ToString(Session["amt"]);
        }

        protected void Buttonfrosubmitbilling_Click(object sender, EventArgs e)
        {
            User user=Session["user"] as User;

            Address add = new Address
            {
                AddressLine1=TextBoxForAddress.Text,
                AddressLine2=TextBoxForAddress0.Text,
                City = TextBoxForAddress3.Text,
                State = TextBoxForAddress2.Text,
                PinCode = Convert.ToInt64 (TextBoxForPincode.Text),
                uid=user.UserId,
                cid = Convert.ToInt32(Session["cid"]),
                PayAmount=Convert.ToInt32(Session["amt"]),
            };
            foreach (Orders pro in OrdersBLL.orders) {
                add.Products += pro.ProductId + ";" + pro.ProductQuntity + ",";
            }
            bll.shippingUser(add);
            
        }

    }
}