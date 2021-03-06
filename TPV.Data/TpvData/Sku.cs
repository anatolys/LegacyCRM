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
    
    public partial class Sku
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sku()
        {
            this.ListingSKUMappings = new HashSet<ListingSKUMapping>();
            this.MerchantReportItems = new HashSet<MerchantReportItem>();
            this.MerchantReportItemsTempStores = new HashSet<MerchantReportItemsTempStore>();
            this.SkuExclusiveMappings = new HashSet<SkuExclusiveMapping>();
        }
    
        public int SkuID { get; set; }
        public int Category4ID { get; set; }
        public string SkuName { get; set; }
        public string SkuCode { get; set; }
        public Nullable<decimal> SkuRecPrice { get; set; }
        public bool SkuActive { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public bool SkuOutputToMerchXls { get; set; }
        public int DiagonalID { get; set; }
        public string SkuCodeSorted { get; set; }
    
        public virtual Categories4 Categories4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ListingSKUMapping> ListingSKUMappings { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MerchantReportItem> MerchantReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MerchantReportItemsTempStore> MerchantReportItemsTempStores { get; set; }
        public virtual SkuAvgPrice SkuAvgPrice { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SkuExclusiveMapping> SkuExclusiveMappings { get; set; }
    }
}
