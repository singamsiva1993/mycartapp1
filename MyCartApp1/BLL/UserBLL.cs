using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MyCartApp1.DAL;
using MyCartApp1.BAL;

namespace MyCartApp1.BLL
{
    public class UserBLL
    {
        DbCore db = new DbCore();
        internal int insertUser(BAL.User usr) {
            SqlParameter[] par ={
                           new SqlParameter("uemail",usr.UserEmail),
                           new SqlParameter("upwd",usr.UserPassword),
                           new SqlParameter("uname",usr.UserName),
                           new SqlParameter("umob",usr.UserMobile),
};
            return db.CoreOps("sp_spInsertCustomer", par);
        
        }

        internal User loginUser(string log)
        {
            SqlParameter[] par ={
                           new SqlParameter("uemail",log)
            };
            User user = null;
            DataTable dt= db.GetTable("spGetUser", par);
            if (dt != null)
            {
                DataRow dr = dt.Rows[0];
                
                user = new User
                {
                    UserId = Convert.ToInt32(dr["uid"].ToString()),
                    UserEmail = dr["uemail"].ToString(),
                    UserMobile = Convert.ToInt64(dr["umob"].ToString()),
                    UserName = dr["uname"].ToString(),
                    UserPassword = dr["upwd"].ToString(),
                    Userrole = int.Parse(dr["urole"].ToString())
                };
            }
            return user;

        }
    }
    
}
