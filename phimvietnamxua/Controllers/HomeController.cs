using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using phimvietnamxua.Models;

namespace phimvietnamxua.Controllers
{
    public class HomeController : Controller
    {
        timphimxuaRelationEntities db = new timphimxuaRelationEntities();
        //[OutputCache(Duration = 360000, VaryByParam =  "*" , Location = System.Web.UI.OutputCacheLocation.ServerAndClient)]
        //[OutputCache(CacheProfile = "indexCache")]
        //[OutputCache(Duration = 360000)]
        public ActionResult Trangchu()
        {
            return View();
        }
        //[OutputCache(Duration = 360000, VaryByParam = "*", Location = System.Web.UI.OutputCacheLocation.ServerAndClient)]
        public ActionResult BackGround()
        {
            return PartialView();
        }
        [ChildActionOnly]
        //[OutputCache(Duration = 360000, VaryByParam = "*", Location = System.Web.UI.OutputCacheLocation.ServerAndClient)]
        //[OutputCache(Duration = 360000)]
        public ActionResult Noidung()
        {
            db.Configuration.LazyLoadingEnabled = false;
            var allPhim = db.phims.OrderBy(p=>p.thoigian).ToList();
            return PartialView("Noidung", allPhim);
        }
        public ActionResult firstLoad()
        {
            db.Configuration.LazyLoadingEnabled = false;
            var allPhim = db.phims.OrderBy(p => p.thoigian).Take(4).ToList();
            return PartialView("firstLoad", allPhim);
        }
        //[OutputCache(Duration = 360000)]
        public ActionResult TouchSlider()
        {
            return View();
        }
    }
}