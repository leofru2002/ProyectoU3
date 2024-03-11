using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoU3.Controllers
{
    public class PendingTaskController : Controller
    {
        // GET: PendingTask
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Pendings()
        {
            return View();
        }

        public ActionResult AgregarPendings()
        {
            return View();
        }
        public ActionResult EditPendings()
        {
            return View();
        }
    }
}