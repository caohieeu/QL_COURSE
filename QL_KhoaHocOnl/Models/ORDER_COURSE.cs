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
    
    public partial class ORDER_COURSE
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ORDER_COURSE()
        {
            this.FEEDBACKs = new HashSet<FEEDBACK>();
            this.QuizResults = new HashSet<QuizResult>();
        }
    
        public string ID_ORDER { get; set; }
        public string ID_COURSE { get; set; }
        public int ID_USER { get; set; }
        public string STATUS_ORDER { get; set; }
        public System.DateTime TIME_AT_ORDER { get; set; }
    
        public virtual COURSE COURSE { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FEEDBACK> FEEDBACKs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuizResult> QuizResults { get; set; }
        public virtual USER_COURSE USER_COURSE { get; set; }
    }
}