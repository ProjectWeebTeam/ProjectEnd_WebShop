using System;
using System.Collections.Generic;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class Slider
    {
        public int Id { get; set; }
        public string Name { get; set; } = null!;
        public string ImageLink { get; set; } = null!;
        public string Link { get; set; } = null!;
        public int SortOrder { get; set; }
        public DateTime Created { get; set; }
    }
}
