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
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.AdvCampaignReportItemMaterials = new HashSet<AdvCampaignReportItemMaterial>();
            this.AdvCampaignReportItems = new HashSet<AdvCampaignReportItem>();
            this.AdvertisingReportItems = new HashSet<AdvertisingReportItem>();
            this.BenchReportItems = new HashSet<BenchReportItem>();
            this.ClientOffices = new HashSet<ClientOffice>();
            this.ClientOffices1 = new HashSet<ClientOffice>();
            this.ClientOffices2 = new HashSet<ClientOffice>();
            this.ClientOffices3 = new HashSet<ClientOffice>();
            this.ClientOffices4 = new HashSet<ClientOffice>();
            this.ClientOffices5 = new HashSet<ClientOffice>();
            this.ClientOffices6 = new HashSet<ClientOffice>();
            this.ClientOffices7 = new HashSet<ClientOffice>();
            this.ClientOffices8 = new HashSet<ClientOffice>();
            this.ClientOffices9 = new HashSet<ClientOffice>();
            this.ClientOffices10 = new HashSet<ClientOffice>();
            this.ClientOffices11 = new HashSet<ClientOffice>();
            this.ClientOffices12 = new HashSet<ClientOffice>();
            this.ClientOffices13 = new HashSet<ClientOffice>();
            this.ClientOffices14 = new HashSet<ClientOffice>();
            this.CompetitorReportItems = new HashSet<CompetitorReportItem>();
            this.CompetitorReports = new HashSet<CompetitorReport>();
            this.MerchantReportItems = new HashSet<MerchantReportItem>();
            this.PhotoReportItems = new HashSet<PhotoReportItem>();
            this.PortionReportItems = new HashSet<PortionReportItem>();
            this.Reports = new HashSet<Report>();
            this.RouteClientOfficeExceptions = new HashSet<RouteClientOfficeException>();
            this.RouteClientOffices = new HashSet<RouteClientOffice>();
            this.RouteClientOfficesDistincts = new HashSet<RouteClientOfficesDistinct>();
            this.Routes = new HashSet<Route>();
            this.SellOutReportItems = new HashSet<SellOutReportItem>();
            this.TrainingReportItemParticipants = new HashSet<TrainingReportItemParticipant>();
            this.TrainingReportItems = new HashSet<TrainingReportItem>();
            this.Users1 = new HashSet<User>();
            this.Visits = new HashSet<Visit>();
            this.Visits1 = new HashSet<Visit>();
        }
    
        public string UserLoginName { get; set; }
        public string UserFullName { get; set; }
        public string UserPassword { get; set; }
        public int UserSubroleID { get; set; }
        public string UserEmail { get; set; }
        public string UserPhone { get; set; }
        public bool UserActive { get; set; }
        public Nullable<int> CityID { get; set; }
        public Nullable<int> ClientOfficeID { get; set; }
        public string SupervisorUserLoginName { get; set; }
        public Nullable<int> TsaCategoryID { get; set; }
        public Nullable<int> GradeID { get; set; }
        public string TimezoneID { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public bool UserHasForumAccess { get; set; }
        public int CountryID { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvCampaignReportItemMaterial> AdvCampaignReportItemMaterials { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvCampaignReportItem> AdvCampaignReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AdvertisingReportItem> AdvertisingReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BenchReportItem> BenchReportItems { get; set; }
        public virtual City City { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices5 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices6 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices7 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices8 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices9 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices10 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices11 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices12 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices13 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientOffice> ClientOffices14 { get; set; }
        public virtual ClientOffice ClientOffice { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CompetitorReportItem> CompetitorReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CompetitorReport> CompetitorReports { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MerchantReportItem> MerchantReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PortionReportItem> PortionReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Report> Reports { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RouteClientOfficeException> RouteClientOfficeExceptions { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RouteClientOffice> RouteClientOffices { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RouteClientOfficesDistinct> RouteClientOfficesDistincts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Route> Routes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SellOutReportItem> SellOutReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainingReportItemParticipant> TrainingReportItemParticipants { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TrainingReportItem> TrainingReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<User> Users1 { get; set; }
        public virtual User User1 { get; set; }
        public virtual User Users11 { get; set; }
        public virtual User User2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Visit> Visits { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Visit> Visits1 { get; set; }
    }
}
