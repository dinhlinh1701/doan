using DataIO.EF;
using Model.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Tieuluan_LTWeb.Controllers
{
    public class HomeController : Controller
    {
        private WebPhim db = new WebPhim();

        public ActionResult Index()
        {
            var list = new Phimcode().ListPhim();
            return View(list);
        }
 
        public ActionResult XemPhim(int id)
        {

            var link = new Phimcode().VideoPhim(id);
            ViewBag.Binhluan = new BinhluanCode().ViewBinhLuan(id);
            return View(link);
        }

        public ActionResult NoPermission()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult DangNhap([Bind(Include = "tenTaiKhoan,matKhau")] TaiKhoan taiKhoan)
        {
            if (ModelState.IsValid)
            {
               var account = db.TaiKhoans
                    .Where(x => x.TenTaiKhoan == taiKhoan.TenTaiKhoan && x.PassWord == x.PassWord)
                    .Include(x => x.QuyenUsers)
                    .FirstOrDefault();
                if (account == null)
                {
                    ViewBag.SaiTaiKhoan = "Ten tai khoan hoac mat khau khong chinh xac!";
                    return RedirectToAction("DangNhap");
                }

                var isAdmin = false;
                foreach (var item in account.QuyenUsers)
                {
                    if (item.QuyenSuDung.idQuyen == 1)
                    {
                        isAdmin = true;
                    }
                }

                if (isAdmin == true)
                {
                    HttpContext.Session.Add("admin", "admin");
                }

                HttpContext.Session.Add("user", account.TenTaiKhoan);
                              
                return RedirectToAction("Index");
            }

            return View();
        }
      
        public ActionResult DangXuat()
        {
            HttpContext.Session.Clear();

            return RedirectToAction("DangNhap");
        }

    }
}