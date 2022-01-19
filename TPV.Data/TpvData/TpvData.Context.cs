﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TpvEntities : DbContext
    {
        public TpvEntities()
            : base("name=TpvEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AdvCampaignMaterial> AdvCampaignMaterials { get; set; }
        public virtual DbSet<AdvCampaignReportItemMaterial> AdvCampaignReportItemMaterials { get; set; }
        public virtual DbSet<AdvCampaignReportItem> AdvCampaignReportItems { get; set; }
        public virtual DbSet<AdvCampaign> AdvCampaigns { get; set; }
        public virtual DbSet<Advertising> Advertisings { get; set; }
        public virtual DbSet<AdvertisingReportItem> AdvertisingReportItems { get; set; }
        public virtual DbSet<BenchCategories1> BenchCategories1 { get; set; }
        public virtual DbSet<BenchReportItem> BenchReportItems { get; set; }
        public virtual DbSet<BenchReportItemsTempStore> BenchReportItemsTempStores { get; set; }
        public virtual DbSet<BenchSku> BenchSkus { get; set; }
        public virtual DbSet<Brand> Brands { get; set; }
        public virtual DbSet<Categories1> Categories1 { get; set; }
        public virtual DbSet<Categories2> Categories2 { get; set; }
        public virtual DbSet<Categories3> Categories3 { get; set; }
        public virtual DbSet<Categories4> Categories4 { get; set; }
        public virtual DbSet<Category1UserSubroleMappings> Category1UserSubroleMappings { get; set; }
        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<ClientOffice> ClientOffices { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<CompetitorAdvertising> CompetitorAdvertisings { get; set; }
        public virtual DbSet<CompetitorReportItem> CompetitorReportItems { get; set; }
        public virtual DbSet<CompetitorReport> CompetitorReports { get; set; }
        public virtual DbSet<ListingClientOfficeMapping> ListingClientOfficeMappings { get; set; }
        public virtual DbSet<Listing> Listings { get; set; }
        public virtual DbSet<ListingSKUMapping> ListingSKUMappings { get; set; }
        public virtual DbSet<MerchantReportCopied> MerchantReportCopieds { get; set; }
        public virtual DbSet<MerchantReportItem> MerchantReportItems { get; set; }
        public virtual DbSet<MerchantReportItemsTempStore> MerchantReportItemsTempStores { get; set; }
        public virtual DbSet<PhotoReportItem> PhotoReportItems { get; set; }
        public virtual DbSet<PhotoReportTag> PhotoReportTags { get; set; }
        public virtual DbSet<PortionReportItem> PortionReportItems { get; set; }
        public virtual DbSet<PortionReportItemsTempStore> PortionReportItemsTempStores { get; set; }
        public virtual DbSet<Report> Reports { get; set; }
        public virtual DbSet<ReportType> ReportTypes { get; set; }
        public virtual DbSet<RouteClientOfficeException> RouteClientOfficeExceptions { get; set; }
        public virtual DbSet<RouteClientOffice> RouteClientOffices { get; set; }
        public virtual DbSet<RouteClientOfficesDistinct> RouteClientOfficesDistincts { get; set; }
        public virtual DbSet<Route> Routes { get; set; }
        public virtual DbSet<SellOutReportItem> SellOutReportItems { get; set; }
        public virtual DbSet<SellOutReportItemType> SellOutReportItemTypes { get; set; }
        public virtual DbSet<SkuAvgPrice> SkuAvgPrices { get; set; }
        public virtual DbSet<SkuExclusiveMapping> SkuExclusiveMappings { get; set; }
        public virtual DbSet<Sku> Skus { get; set; }
        public virtual DbSet<TrainingReportItemParticipant> TrainingReportItemParticipants { get; set; }
        public virtual DbSet<TrainingReportItem> TrainingReportItems { get; set; }
        public virtual DbSet<Training> Trainings { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<VisitRule> VisitRules { get; set; }
        public virtual DbSet<VisitRulesType1> VisitRulesType1 { get; set; }
        public virtual DbSet<VisitRulesType2> VisitRulesType2 { get; set; }
        public virtual DbSet<Visit> Visits { get; set; }
    }
}
