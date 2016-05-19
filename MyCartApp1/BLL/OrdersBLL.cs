using MyCartApp1.BAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCartApp1.BLL
{
    public class OrdersBLL
    {
        public static List<Orders> orders = null;
        public void AddOrder(Orders or)
        {
            if (orders == null)
            {
                orders = new List<Orders>();
            }
            orders.Add(or);
        }
        public void DeleteOrder(int id)
        {
            orders.Remove(orders.FirstOrDefault(p => p.ProductId==id));
        }
        public void UpdateOrder(int id,int qty)
        {
            orders.FirstOrDefault(p => p.ProductId==id).ProductQuntity=qty;
            orders.FirstOrDefault(p => p.ProductId == id).ProductTotalCost = orders.FirstOrDefault(p => p.ProductId == id).ProductCost * qty;
        }
        public double OrderTotal()
        {
            return (double)orders.Sum(p => p.ProductTotalCost);
        }

        
    }
}