using Microsoft.AspNetCore.Mvc;
using ProjectEnd_ShopAcc.Models;
using System.Diagnostics;
using System.Web;
using System;
using System.Collections.Generic;


namespace ProjectEnd_ShopAcc.ProductControllers
{
    public class ProductController : Controller
    {
        // GET: Product ( Sản Phẩm)
        public ActionResult Detail() // Chi tiết sản phẩm
        {
return View();
        }
    }
}

