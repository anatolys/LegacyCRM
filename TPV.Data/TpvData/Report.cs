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
    
    public partial class Report
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Report()
        {
            this.AdvCampaignReportItems = new HashSet<AdvCampaignReportItem>();
            this.AdvertisingReportItems = new HashSet<AdvertisingReportItem>();
            this.BenchReportItems = new HashSet<BenchReportItem>();
            this.CompetitorReportItems = new HashSet<CompetitorReportItem>();
            this.MerchantReportCopieds = new HashSet<MerchantReportCopied>();
            this.MerchantReportItems = new HashSet<MerchantReportItem>();
            this.PhotoReportItems = new HashSet<PhotoReportItem>();
            this.PortionReportItems = new HashSet<PortionReportItem>();
            this.SellOutReportItems = new HashSet<SellOutReportItem>();
            this.TrainingReportItems = new HashSet<TrainingReportItem>();
        }
    
        public System.Guid ReportGUID { get; set; }
        public Nullable<System.Guid> VisitGUID { get; set; }
        public string ReportOwner { get; set; }
        public int ReportType { get; set; }
        public Nullable<int> ReportApproved { get; set; }
        public string ReportApprovedBy { get; set; }
        public Nullable<System.DateTime> ReportApprovedWhen { get; set; }
        public string ReportApprovalComment { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public Nullable<System.DateTime> VisitDate { get; set; }
        public Nullable<System.DateTime> ReportCreatedWhen { get; set; }
        public Nullable<System.DateTime> ReportFirstSavedWhen { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvCampaignReportItem> AdvCampaignReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvertisingReportItem> AdvertisingReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BenchReportItem> BenchReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CompetitorReportItem> CompetitorReportItems { get; set; }
        public virtual CompetitorReport CompetitorReport { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MerchantReportCopied> MerchantReportCopieds { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MerchantReportItem> MerchantReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PortionReportItem> PortionReportItems { get; set; }
        public virtual ReportType ReportType1 { get; set; }
        public virtual User User { get; set; }
        public virtual Visit Visit { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SellOutReportItem> SellOutReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainingReportItem> TrainingReportItems { get; set; }
    }
}
