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
    
    public partial class VisitRule
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VisitRule()
        {
            this.Clients = new HashSet<Client>();
            this.VisitRulesType2 = new HashSet<VisitRulesType2>();
        }
    
        public int VisitRuleID { get; set; }
        public string VisitRuleName { get; set; }
        public int VisitRuleTypeID { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Client> Clients { get; set; }
        public virtual VisitRulesType1 VisitRulesType1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VisitRulesType2> VisitRulesType2 { get; set; }
    }
}