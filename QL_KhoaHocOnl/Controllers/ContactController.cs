using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QL_KhoaHocOnl.Services.MailService;
using QL_KhoaHocOnl.ViewModel;

namespace QL_KhoaHocOnl.Controllers
{
    public class ContactController : Controller
    {
        private IEmailService emailService;
        private string ToEmail;
        // GET: Contact
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(MailVM mail)
        {
            if (Request.Cookies["User"] != null)
            {
                if (!ModelState.IsValid)
                {
                    return View();
                }

                string subject = "Cảm ơn bạn đã phản hồi";

                emailService = new EmailService();
                ToEmail = mail.email.ToString();
                MailRequest mailRequest = new MailRequest();
                mailRequest.Subject = subject;
                mailRequest.Body = $"Chào {mail.first_name} {mail.last_name},<br><br>" +
                            "Chúng tôi xin cảm ơn bạn đã gửi phản hồi và ý kiến đóng góp của mình về trang web của chúng tôi.<br><br>" +
                            "Chúng tôi sẽ xem xét mọi ý kiến và cố gắng cải thiện trang web để đáp ứng mong đợi của bạn.<br><br>" +
                            "Thông tin về các khóa học của chúng tôi: https://localhost:44309/course/index <br><br>" +
                            "Trân trọng,<br>" +
                            "<strong>ITEDU ONLINE SCHOOL</strong>";
                mailRequest.ToEmail = ToEmail;
                emailService.SendEmail(mailRequest);
            }
            else
            {
                return RedirectToAction("Login", "Account");
            }
            return View();
        }
    }
}