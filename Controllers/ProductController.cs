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
        private ILogger<ProductController> _logger;

        // GET: Product ( Sản Phẩm)
        public ProductController(ILogger<ProductController> logger)
        {
            _logger = logger;
        }
        public ActionResult Detail() // Chi tiết sản phẩm
        {
        return View();
        }
        public ActionResult Category() // Phân loại sản phẩm
        {
            return View();
        }
        public ActionResult Cart() // Chi tiết sản phẩm
        {
        return View();
        }}}
 

