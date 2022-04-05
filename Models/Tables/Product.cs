using System;
using System.Collections.Generic;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class Product
    {
        public int Id { get; set; }
        public int CatalogId { get; set; }
        public string Name { get; set; } = null!;
        public string Content { get; set; } = null!;
        public decimal Price { get; set; }
        public int? Discount { get; set; }
        public string ImageLink { get; set; } = null!;
        public int View { get; set; }
        public int Buyed { get; set; }
        public int RateTotal { get; set; }
        public int RateCount { get; set; }
        public int Created { get; set; }
    }
}
