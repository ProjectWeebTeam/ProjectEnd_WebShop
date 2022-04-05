using System;
using System.Collections.Generic;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class Catalog
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string? Description { get; set; }
        public sbyte SortOrder { get; set; }
        public DateTime Created { get; set; }
    }
}
