using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCartApp1.BAL
{
    public class Address
    {
        public int uid { get; set; }
        public int cid { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public long PinCode { get; set; }
        public int PayAmount { get; set; }
        public string Products { get; set; }
    }
}