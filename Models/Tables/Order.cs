using System;
using System.Collections.Generic;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class Order
    {
        public int Id { get; set; }
        public int TransactionId { get; set; }
        public int ProductId { get; set; }
        public int Qty { get; set; }
        public decimal Amount { get; set; }
        public int Status { get; set; }
    }
}
