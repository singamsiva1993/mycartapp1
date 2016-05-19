using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyCartApp1.DAL;
using System.Data;
using System.Data.SqlClient;
namespace MyCartApp1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DbCore dc = new DbCore();
        DataTable datatable = null;
        public void gridBind()
        {
            datatable = dc.GetTable("spGetAllCategories");
            CategoriesGridView.DataSource = datatable;
            CategoriesGridView.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridBind();
            }
        }

        protected void CategoriesGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CategoriesGridView.EditIndex = e.NewEditIndex;
            gridBind();
        }

        protected void CategoriesGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(CategoriesGridView.DataKeys[e.RowIndex].Value.ToString());
            SqlParameter[] par ={
                               new SqlParameter("id",id)
                               };
            int res = dc.CoreOps("spDeleteCategory", par);
            if (res > 0)
            {
                gridBind();
            }
        }

        protected void CategoriesGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(CategoriesGridView.DataKeys[e.RowIndex].Value.ToString());
            TextBox name = (TextBox)CategoriesGridView.Rows[e.RowIndex].FindControl("txtName");
            SqlParameter[] par ={
                                    new SqlParameter("id",id),
                                    new SqlParameter("cat_name",name.Text)
                               };
            int res = dc.CoreOps("spUpdateCategory", par);
            CategoriesGridView.EditIndex = -1;
            if (res > 0)
            {
                gridBind();
            }
        }

        protected void CategoriesGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CategoriesGridView.EditIndex = -1;
            gridBind();
        }

        protected void lnkbtnAddCategory_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtCategory.Text;
            SqlParameter[] par ={
                                    new SqlParameter("cat_name",name)
                               };
            int res = dc.CoreOps("spInsertCategory", par);
            if (res > 0)
            {
                gridBind();
            }
            Panel1.Visible = false;

        }

       

    }
}