using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyCartApp1.DAL;
using MyCartApp1.BAL;
using System.Data;
using System.Data.SqlClient;

namespace MyCartApp1.BLL
{
    public class ProductBLL
    {
        public static List<Product> products = null;
        public void GetAllProducts()
        {
            DbCore core = new DbCore();

            DataTable dt = core.GetTable("spGetAllProducts");
            if (dt != null)
            {
                products = new List<Product>();
                foreach (DataRow dr in dt.Rows)
                {
                    products.Add(new Product {
                    ProductId = int.Parse(dr["prod_id"].ToString()),
                    CategoryId=int.Parse(dr["cat_id"].ToString()),
                    Description=dr["prod_desc"].ToString(),
                    Name = dr["prod_name"].ToString(),
                    Cost=double.Parse(dr["prod_cost"].ToString()),
                    MinStock = int.Parse(dr["min_stock"].ToString()),
                    ActualStock = int.Parse(dr["actual_stock"].ToString()),
                    });
                }
            }
        }
        public Product GetProduct(int id)
        {
            Product prod = null;
            prod=products.FirstOrDefault(p => p.ProductId == id);
            return prod;
        }
        public int InsertProduct(Product pro)
        {
            DbCore dc = new DbCore();
            SqlParameter[] par ={
                                    new SqlParameter("min_stock",pro.MinStock),
                                    new SqlParameter("cat_id",pro.CategoryId),
                                    new SqlParameter("actual_stock",pro.ActualStock),
                                    new SqlParameter("name",pro.Name),
                                    new SqlParameter("desc",pro.Description),
                                    new SqlParameter("cost",pro.Cost)
                               };
            int res = dc.CoreOps("spInsertProduct", par);
            return res;
        }
        public void getproductsbycategory(int id) { 
        
         DbCore core = new DbCore();
         SqlParameter[] par ={
                                    new SqlParameter("id",id)
                                };
         DataTable dt = core.GetTable("spGetAllProductsByCategory", par);
            if (dt != null)
            {
                products = new List<Product>();
                foreach (DataRow dr in dt.Rows)
                {
                    products.Add(new Product
                    {
                        ProductId = int.Parse(dr["prod_id"].ToString()),
                        CategoryId = int.Parse(dr["cat_id"].ToString()),
                        Description = dr["prod_desc"].ToString(),
                        Name = dr["prod_name"].ToString(),
                        Cost = double.Parse(dr["prod_cost"].ToString()),
                        MinStock = int.Parse(dr["min_stock"].ToString()),
                        ActualStock = int.Parse(dr["actual_stock"].ToString()),
                    });
                }
            }
        
        }
    }
}
