using Microsoft.AspNetCore.Mvc;
using ProjectEnd_ShopAcc.Models;
using System.Diagnostics;

namespace ProjectEnd_ShopAcc.Controllers
{
    public class AdminController : Controller
    {
        private readonly ILogger<AdminController> _logger;

        public AdminController(ILogger<AdminController> logger)
        {
            _logger = logger;
        }
        public IActionResult Login()
        {
            return View();
       
        }
         public IActionResult Login2()
        {
            return View();
        }
        public IActionResult Login3()
        {
            return View();
        }}}
           