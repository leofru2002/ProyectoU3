using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoU3.Controllers
{
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult AdminUsers()
        {
            return View();
        }

        public ActionResult DeleteUsers()
        {
            return View();
        }

        public ActionResult UpdateUsers()
        {
            return View();
        }
        public ActionResult AgregarUsers()
        {
            return View();
        }
    }
}