//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QL_KhoaHocOnl.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class QuizResult
    {
        public string ID_ORDER { get; set; }
        public int QuizID { get; set; }
        public Nullable<double> Grade { get; set; }
    
        public virtual ORDER_COURSE ORDER_COURSE { get; set; }
        public virtual Quiz Quiz { get; set; }
    }
}
