﻿using QL_KhoaHocOnl.ApiControllers;
using QL_KhoaHocOnl.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace QL_KHOnl_CF.Controllers
{
    public class TeacherController : Controller
    {
        // GET: Teacher
        QL_COURSEEntities1 db = new QL_COURSEEntities1();
        TeacherApiController api = new TeacherApiController();
        public ActionResult Index()
        {
            var lst = db.TEACHERs.ToList(); 
            return View(lst);
        }
        public ActionResult TeacherApi()
        {
            return View();
        }
        public ActionResult Detail(string id)
        {
            var teacher = api.GetById(id);
            TEACHER t = db.TEACHERs.Where(x => x.ID_TEACHER == id).FirstOrDefault();    
            return View(teacher);
        }
        public ActionResult CourseOfTeacher(string id)
        {
            var lst = db.FN_ShowCourseOfTeacher(id).ToList();  
            return View(lst);
        }
    }
}