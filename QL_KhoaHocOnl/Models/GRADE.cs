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
    
    public partial class GRADE
    {
        public int GRADEID { get; set; }
        public int ID_USER { get; set; }
        public string ID_COURSE { get; set; }
        public Nullable<double> GRADE1 { get; set; }
    
        public virtual COURSE COURSE { get; set; }
        public virtual USER_COURSE USER_COURSE { get; set; }
    }
}
