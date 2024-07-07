using CaseCadingDDL.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace CaseCadingDDL.Controllers
{
    public class HomeController : Controller
    {
        DbLogic db=new DbLogic();
        public IActionResult Index()
        {
            return View();
        }

        public JsonResult GetCountry()
        {
            return Json(db.GetCountry());
        }
        public JsonResult GetStates(int id)
        {
            return Json(db.GetStates(id));
        }
        public JsonResult GetCities(int id)
        {
            return Json(db.GetCity(id));
        }


        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}