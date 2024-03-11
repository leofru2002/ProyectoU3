using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoU3.Controllers
{
    public class NoveltyController : Controller
    {
        // GET: Novelty
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Binnacle()
        {
            return View();
        }

        public ActionResult AgregarBinnacle()
        {
            return View();
        }
    }
}