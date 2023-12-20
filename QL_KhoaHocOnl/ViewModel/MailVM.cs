using MimeKit.Encodings;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace QL_KhoaHocOnl.ViewModel
{
    public class MailVM
    {
        [Required(ErrorMessage = "Họ không được để trống")]
        public string first_name { get; set; }
        [Required(ErrorMessage = "Tên không được để trống")]
        public string last_name { get; set; }
        [Required(ErrorMessage = "Email không được để trống")]
        public string email { get; set; }
        [Required(ErrorMessage = "Ý kiến không được để trống")]
        public string comments { get; set; }
    }
}