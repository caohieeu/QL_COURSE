﻿using QL_KhoaHocOnl.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QL_KhoaHocOnl.Areas.Admin.Controllers
{
    public class ArticleController : Controller
    {
        // GET: Admin/Article
        public ActionResult Article()
        {
            using (QL_COURSEEntities1 db = new QL_COURSEEntities1())
            {
                return View(db.ARTICLEs.ToList());
            }
        }

        [HttpPost]
        public ActionResult Article(string THUMBNAIL, int? ID, int ID_USER, string TITLE, string CONTENT, string STATUS_ARTICLE, string TYPE_ARTICLE)
        {
            using (QL_COURSEEntities1 db = new QL_COURSEEntities1())
            {
                if (ID > 0 && ID != null)
                {
                    ARTICLE ArticleUpdate = db.ARTICLEs.Where(x => x.ID == ID).FirstOrDefault();
                    ArticleUpdate.TITLE = TITLE;
                    ArticleUpdate.CONTENT = CONTENT;
                    ArticleUpdate.STATUS_ARTICLE = STATUS_ARTICLE;
                    ArticleUpdate.TYPE_ARTICLE = TYPE_ARTICLE;
                    ArticleUpdate.CONTENT = CONTENT;
                    ArticleUpdate.THUMBNAIL = THUMBNAIL;
                    ArticleUpdate.UPDATED_AT = DateTime.Now;
                    db.SaveChanges();
                }
                else
                {
                    db.ARTICLEs.Add(new ARTICLE { ID_USER = ID_USER, TITLE = TITLE, CONTENT = CONTENT, STATUS_ARTICLE = STATUS_ARTICLE, THUMBNAIL = THUMBNAIL, TYPE_ARTICLE = TYPE_ARTICLE, UPDATED_AT = DateTime.Now, CREATED_AT = DateTime.Now });
                    db.SaveChanges();
                }
                return View(db.ARTICLEs.ToList());
            }
        }

        public ActionResult DeleteArticle(int id)
        {
            using (QL_COURSEEntities1 db = new QL_COURSEEntities1())
            {
                ARTICLE customer = db.ARTICLEs.Where(x => x.ID == id).FirstOrDefault();
                db.ARTICLEs.Remove(customer);
                db.SaveChanges();

                return RedirectToAction("Article");
            }
        }
    }
}