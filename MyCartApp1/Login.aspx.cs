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
    public partial class Login : System.Web.UI.Page
    {
        UserBLL ulog = new UserBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            User login = ulog.loginUser(Login1.UserName);
            bool isAuth = false;
            if (login != null)
            {
                if (Login1.Password == login.UserPassword)
                {
                    isAuth = true;
                }
            }
            Session["user"] = login;
            if (login.Userrole == 1)
            {
                Session["admin"] = "admin";
            }
            e.Authenticated = isAuth;
        }
    }
}