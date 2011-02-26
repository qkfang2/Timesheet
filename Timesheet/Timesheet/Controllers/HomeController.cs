using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Timesheet.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult Test(TimesheetEntry entry)
        {
            TimesheetEntities ent = new TimesheetEntities();

            entry = ent.TimesheetEntries.First();
            
            return View(entry);
        }
    }
}
