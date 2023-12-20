using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QL_KhoaHocOnl.Services.MailService
{
    public class MailRequest
    {
        public string ToEmail { set; get; }
        public string Subject { set; get; }
        public string Body { set; get; }
    }
}