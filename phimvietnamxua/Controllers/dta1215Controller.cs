using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Ajax.Utilities;
using phimvietnamxua.Models;

namespace phimvietnamxua.Controllers
{
    public class dta1215Controller : Controller
    {
        // GET: dta1215
        timphimxuaRelationEntities db = new timphimxuaRelationEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ThemPhim()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Them(List<phim> list)
        {
            if (list.Count > 0)
            {
                for (int i = 0; i < list.Count; i++)
                {
                    db.phims.Add(list[i]);
                    db.SaveChanges();
                }
                db.Dispose();
                return Json("OK", JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json("BAD", JsonRequestBehavior.AllowGet);
            }
        }

        public JsonResult getQuocGia()
        {
            db.Configuration.LazyLoadingEnabled = false;
            var result = db.phims.DistinctBy(p => p.quocgia).Select(p=>p.quocgia).ToList();
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        
        [ChildActionOnly]
        public ActionResult Danhsach()
        {
            var allPhim = db.phims.ToList();
            allPhim.Reverse();
            return PartialView("Danhsach", allPhim);
        }
        public ActionResult Delete(int id)
        {
            var delete = db.phims.SingleOrDefault(p => p.id == id);
            db.phims.Remove(delete);
            db.SaveChanges();
            return RedirectToAction("ThemPhim");
        }
    }
}