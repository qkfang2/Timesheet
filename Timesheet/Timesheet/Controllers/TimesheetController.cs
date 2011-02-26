using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Timesheet.Models;
using System.Web.Mvc;

namespace Timesheet.Controllers
{
    public class TimesheetController : Controller
    {
        TimesheetEntities entityService = new TimesheetEntities();
        //
        // GET: /Timesheet/

        public ActionResult Index()
        {
            return View(entityService.TimesheetEntries.ToList());
        }

        //
        // GET: /Timesheet/Details/5

        public ActionResult Details(int id)
        {
            return View(entityService.TimesheetEntries.Where(e => e.Id == id).FirstOrDefault());
        }

        #region create
        //
        // GET: /Timesheet/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Timesheet/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                TimesheetEntry entry = new TimesheetEntry();
                if (entry != null)
                {
                    entry.EntryDate = collection["EntryDate"].ToDateTime();
                    entry.StartTime = collection["StartTime"].ToDateTime();
                    entry.EndTime = collection["EndTime"].ToDateTime();
                    entry.EntryCategory = collection["EntryCategory"];
                    entry.EntryEvent = collection["EntryEvent"];

                    entityService.AddToTimesheetEntries(entry);
                    entityService.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion

        #region edit
        //
        // GET: /Timesheet/Edit/5
        public ActionResult Edit(int id)
        {
            return View(entityService.TimesheetEntries.Where(e => e.Id == id).FirstOrDefault());
        }

        //
        // POST: /Timesheet/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                TimesheetEntry entry = entityService.TimesheetEntries.Where(e => e.Id == id).FirstOrDefault();
                if (entry != null)
                {
                    entry.EntryDate = collection["EntryDate"].ToDateTime();
                    entry.StartTime = collection["StartTime"].ToDateTime();
                    entry.EndTime = collection["EndTime"].ToDateTime();
                    entry.EntryCategory = collection["EntryCategory"];
                    entry.EntryEvent = collection["EntryEvent"];

                    entityService.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion

        #region del
        //
        // GET: /Timesheet/Delete/5

        public ActionResult Delete(int id)
        {
            return View(entityService.TimesheetEntries.Where(e => e.Id == id).FirstOrDefault());
        }

        //
        // POST: /Timesheet/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
                TimesheetEntry entry = entityService.TimesheetEntries.Where(e => e.Id == id).FirstOrDefault();
                if (entry != null)
                {
                    entityService.DeleteObject(entry);
                    entityService.SaveChanges();
                }

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        #endregion
    }
}
