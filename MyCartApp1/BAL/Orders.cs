using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCartApp1.BAL
{
    public class Orders
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int ProductQuntity { get; set; }

        public double ProductCost { get; set; }
        public double ProductTotalCost { get; set; }
    }
}