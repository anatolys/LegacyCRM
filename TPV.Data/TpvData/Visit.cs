//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TpvData
{
    using System;
    using System.Collections.Generic;
    
    public partial class Visit
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Visit()
        {
            this.Reports = new HashSet<Report>();
        }
    
        public System.Guid VisitGUID { get; set; }
        public string UserLoginName { get; set; }
        public int ClientOfficeID { get; set; }
        public Nullable<int> UserSubroleID { get; set; }
        public string SupervisorUserLoginName { get; set; }
        public System.DateTime VisitDate { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public bool VisitMadeBySupervisor { get; set; }
        public Nullable<System.DateTime> VisitStartedWhen { get; set; }
        public Nullable<System.DateTime> VisitFinishedWhen { get; set; }
        public bool CreatedInWeb { get; set; }
        public Nullable<bool> InRoute { get; set; }
    
        public virtual ClientOffice ClientOffice { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Report> Reports { get; set; }
        public virtual User User { get; set; }
        public virtual User User1 { get; set; }
    }
}
