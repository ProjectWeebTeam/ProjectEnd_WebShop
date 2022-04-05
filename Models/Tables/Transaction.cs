using System;
using System.Collections.Generic;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class Transaction
    {
        public int Id { get; set; }
        public int Status { get; set; }
        public int UserId { get; set; }
        public string UserName { get; set; } = null!;
        public string UserEmail { get; set; } = null!;
        public string UserPhone { get; set; } = null!;
        public string UserAddress { get; set; } = null!;
        public string Message { get; set; } = null!;
        public decimal Amount { get; set; }
        public string Payment { get; set; } = null!;
        public int Created { get; set; }
    }
}
