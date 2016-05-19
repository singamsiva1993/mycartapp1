using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyCartApp1.BAL;
using MyCartApp1.BLL;
using MyCartApp1.DAL;
using System.Data;
using System.Data.SqlClient;

namespace MyCartApp1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            ProductBLL bt = new ProductBLL();
            bt.getproductsbycategory(id);
          Repeater1.DataSource = ProductBLL.products;
            Repeater1.DataBind();

        }

    }
}