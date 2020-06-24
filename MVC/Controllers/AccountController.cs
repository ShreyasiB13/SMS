using MvcLoginRegistration.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Mvc;

namespace MvcLoginRegistration.Controllers
{
    public class AccountController : Controller
    {
        // GET: Account
        public ActionResult Index()
        {
            return View();
        }
        //Login
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(AdminAccount admin)
        {
            using (smsContext db = new smsContext())
            {
                var adm = db.adminAccount.SingleOrDefault(a => a.Username == admin.Username && a.Password == admin.Password);
                if (adm != null)

                {
                    Session["Username"] = admin.Username.ToString();
                    return RedirectToAction("LoggedIn");
                }
                else
                {
                    ModelState.AddModelError("", "Username or Password is Incorrect!");
                }
            }
            return View();

        }
        public ActionResult LoggedIn()
        {
            if (Session["Username"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("Login");
            }
        }
        public ActionResult ViewTrainers(TrainerAccount trainer)
        {
            if (Session["TUsername"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("LoggedIn");
            }
        }

    }
}