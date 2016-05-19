using MyCartApp1.BAL;
using MyCartApp1.BLL;
using MyCartApp1.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace MyCartApp1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ProductBLL bl = new ProductBLL();
        DbCore dc = new DbCore();
        DataTable datatable = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            datatable = dc.GetTable("spGetAllCategories");
            ddlProductCategories.DataSource = datatable;
            ddlProductCategories.DataValueField = "id";
            ddlProductCategories.DataTextField = "category_name";
            ddlProductCategories.DataBind();
            bl.GetAllProducts();
        gridProduct.DataSource = ProductBLL.products;
            gridProduct.DataBind();

        }

        protected void btnProductAdd_Click(object sender, EventArgs e)
        {
            Product pro = new Product
            {
                CategoryId=int.Parse(ddlProductCategories.SelectedValue.ToString()),
                Name=txtProductName.Text,
            
           Description = txtProductDesc.Text,
            Cost = Convert.ToInt32(txtProductCost.Text),
             MinStock= Convert.ToInt32(txtProductMinStock.Text),
            ActualStock = Convert.ToInt32(txtProductActStock.Text)
            };
            ProductBLL pb = new ProductBLL();
            pb.InsertProduct(pro);
           

        }

        protected void gridProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id=int.Parse(gridProduct.SelectedDataKey.Value.ToString());
            ProductBLL pb = new ProductBLL();
            Product pro=pb.GetProduct(id);
            txtProductName.Text = pro.Name;
            txtProductCost.Text = pro.Cost.ToString();
            txtProductDesc.Text = pro.Description;
            txtProductMinStock.Text = pro.MinStock.ToString();
            txtProductActStock.Text = pro.ActualStock.ToString();

        }
    }
}