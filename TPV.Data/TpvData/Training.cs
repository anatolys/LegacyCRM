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
    
    public partial class Training
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Training()
        {
            this.TrainingReportItems = new HashSet<TrainingReportItem>();
        }
    
        public int TrainingID { get; set; }
        public string TrainingName { get; set; }
        public bool TrainingActive { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainingReportItem> TrainingReportItems { get; set; }
    }
}
