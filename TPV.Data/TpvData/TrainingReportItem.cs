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
    
    public partial class TrainingReportItem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TrainingReportItem()
        {
            this.TrainingReportItemParticipants = new HashSet<TrainingReportItemParticipant>();
        }
    
        public System.Guid TrainingReportItemGUID { get; set; }
        public System.Guid ReportGUID { get; set; }
        public string TrainingReportItemOwner { get; set; }
        public int TrainingID { get; set; }
        public int TrainingReportItemNumParticipants { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    
        public virtual Report Report { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainingReportItemParticipant> TrainingReportItemParticipants { get; set; }
        public virtual Training Training { get; set; }
        public virtual User User { get; set; }
    }
}
