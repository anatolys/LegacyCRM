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
    
    public partial class Categories3
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Categories3()
        {
            this.Categories4 = new HashSet<Categories4>();
            this.CompetitorReportItems = new HashSet<CompetitorReportItem>();
            this.PortionReportItems = new HashSet<PortionReportItem>();
            this.PortionReportItemsTempStores = new HashSet<PortionReportItemsTempStore>();
        }
    
        public int Category3ID { get; set; }
        public int Category2ID { get; set; }
        public string Category3Name { get; set; }
        public int Category4Count { get; set; }
        public bool Category3Active { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public string Category3NameEng { get; set; }
        public bool Category3OutputToMerchXls { get; set; }
    
        public virtual Categories2 Categories2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Categories4> Categories4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CompetitorReportItem> CompetitorReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PortionReportItem> PortionReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PortionReportItemsTempStore> PortionReportItemsTempStores { get; set; }
    }
}
