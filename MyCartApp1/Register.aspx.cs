using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyCartApp1.BAL;
using MyCartApp1.BLL;

namespace MyCartApp1
{
    public partial class Register : System.Web.UI.Page
    {
        UserBLL ubll = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonforSubmit_Click(object sender, EventArgs e)
        {
            User usa = new User
            {
                UserEmail = TextBoxforEmail.Text,
                UserPassword = TextBoxforpassword.Text,
                UserName = TextBoxforUseName.Text,
                UserMobile = Convert.ToInt64(TextBoxforMobilenumber.Text),
            };
            ubll.insertUser(usa);
        }

    }
}