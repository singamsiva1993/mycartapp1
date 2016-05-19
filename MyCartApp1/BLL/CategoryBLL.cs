using MyCartApp1.BAL;
using MyCartApp1.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace MyCartApp1.BLL
{
    public class CategoryBLL
    {
        public static List<Category> categories = null;
        public void GetAllCategories()
        {
            DbCore core = new DbCore();
            DataTable dt = core.GetTable("spGetAllCategories");
            if (dt != null)
            {
                categories = new List<Category>();
                foreach (DataRow dr in dt.Rows)
                {
                    categories.Add(new Category
                    {
                        Id = int.Parse(dr["cat_id"].ToString()),
                       Name=dr["cat_name"].ToString()
                    });
                }
            }
        }
        public Category GetCategory(int id)
        {
            Category disc = null;
            disc = categories.FirstOrDefault(p => p.Id == id);
            return disc;
        }
    }
}
