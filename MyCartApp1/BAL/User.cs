using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCartApp1.BAL
{
    public class User
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string UserEmail { get; set; }
        public string UserPassword { get; set; }
        public int isactive { get; set; }
        public int Userrole { get; set; }
        public long UserMobile { get; set; }

    }
}