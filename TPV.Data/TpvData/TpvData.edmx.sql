
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/18/2018 12:13:23
-- Generated from EDMX file: C:\Git\TPV.CRMAndroid\TPVData\TpvData\TpvData\TpvData\TpvData.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TPV];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AdvCampaignMaterialMappings_AdvCampaignMaterials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignMaterialMappings] DROP CONSTRAINT [FK_AdvCampaignMaterialMappings_AdvCampaignMaterials];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignMaterialMappings_AdvCampaigns]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignMaterialMappings] DROP CONSTRAINT [FK_AdvCampaignMaterialMappings_AdvCampaigns];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItemMaterials_AdvCampaignMaterials]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItemMaterials] DROP CONSTRAINT [FK_AdvCampaignReportItemMaterials_AdvCampaignMaterials];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItemMaterials_AdvCampaignReportItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItemMaterials] DROP CONSTRAINT [FK_AdvCampaignReportItemMaterials_AdvCampaignReportItems];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItemMaterials_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItemMaterials] DROP CONSTRAINT [FK_AdvCampaignReportItemMaterials_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItems_AdvCampaigns]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItems] DROP CONSTRAINT [FK_AdvCampaignReportItems_AdvCampaigns];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItems] DROP CONSTRAINT [FK_AdvCampaignReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvCampaignReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvCampaignReportItems] DROP CONSTRAINT [FK_AdvCampaignReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvertisingReportItems_Advertising]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvertisingReportItems] DROP CONSTRAINT [FK_AdvertisingReportItems_Advertising];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvertisingReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvertisingReportItems] DROP CONSTRAINT [FK_AdvertisingReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_AdvertisingReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AdvertisingReportItems] DROP CONSTRAINT [FK_AdvertisingReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchReportItems_BenchSkus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchReportItems] DROP CONSTRAINT [FK_BenchReportItems_BenchSkus];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchReportItems] DROP CONSTRAINT [FK_BenchReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchReportItems] DROP CONSTRAINT [FK_BenchReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchReportItemsTempStore_BenchSkus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchReportItemsTempStore] DROP CONSTRAINT [FK_BenchReportItemsTempStore_BenchSkus];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchSkus_BenchCategories1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchSkus] DROP CONSTRAINT [FK_BenchSkus_BenchCategories1];
GO
IF OBJECT_ID(N'[dbo].[FK_BenchSkus_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BenchSkus] DROP CONSTRAINT [FK_BenchSkus_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_Categories2_Categories1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Categories2] DROP CONSTRAINT [FK_Categories2_Categories1];
GO
IF OBJECT_ID(N'[dbo].[FK_Categories3_Categories2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Categories3] DROP CONSTRAINT [FK_Categories3_Categories2];
GO
IF OBJECT_ID(N'[dbo].[FK_Categories4_Categories3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Categories4] DROP CONSTRAINT [FK_Categories4_Categories3];
GO
IF OBJECT_ID(N'[dbo].[FK_Category1BrandMappings_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Category1BrandMappings] DROP CONSTRAINT [FK_Category1BrandMappings_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_Category1BrandMappings_Categories1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Category1BrandMappings] DROP CONSTRAINT [FK_Category1BrandMappings_Categories1];
GO
IF OBJECT_ID(N'[dbo].[FK_Category1UserSubroleMappings_Categories1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Category1UserSubroleMappings] DROP CONSTRAINT [FK_Category1UserSubroleMappings_Categories1];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Cities]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Cities];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Clients]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Clients];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Analyst1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Analyst1];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Analyst2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Analyst2];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Analyst3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Analyst3];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Analyst4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Analyst4];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Analyst5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Analyst5];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_MerchSupervisor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_MerchSupervisor2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor2];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_MerchSupervisor3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor3];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_MerchSupervisor4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor4];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_MerchSupervisor5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor5];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Supervisor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Supervisor];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Supervisor2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Supervisor2];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Supervisor3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Supervisor3];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Supervisor4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Supervisor4];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOffices_Users_Supervisor5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClientOffices] DROP CONSTRAINT [FK_ClientOffices_Users_Supervisor5];
GO
IF OBJECT_ID(N'[dbo].[FK_Clients_VisitRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_Clients_VisitRules];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReportItems_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReportItems] DROP CONSTRAINT [FK_CompetitorReportItems_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReportItems_Categories3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReportItems] DROP CONSTRAINT [FK_CompetitorReportItems_Categories3];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReportItems] DROP CONSTRAINT [FK_CompetitorReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReportItems] DROP CONSTRAINT [FK_CompetitorReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReports_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReports] DROP CONSTRAINT [FK_CompetitorReports_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_CompetitorReports_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CompetitorReports] DROP CONSTRAINT [FK_CompetitorReports_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_ListingClientOfficeMappings_ClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListingClientOfficeMappings] DROP CONSTRAINT [FK_ListingClientOfficeMappings_ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_ListingClientOfficeMappings_Listings]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListingClientOfficeMappings] DROP CONSTRAINT [FK_ListingClientOfficeMappings_Listings];
GO
IF OBJECT_ID(N'[dbo].[FK_ListingSKUMappings_Listings]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListingSKUMappings] DROP CONSTRAINT [FK_ListingSKUMappings_Listings];
GO
IF OBJECT_ID(N'[dbo].[FK_ListingSKUMappings_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ListingSKUMappings] DROP CONSTRAINT [FK_ListingSKUMappings_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantReportCopied_Reports_From]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantReportCopied] DROP CONSTRAINT [FK_MerchantReportCopied_Reports_From];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantReportItems] DROP CONSTRAINT [FK_MerchantReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantReportItems_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantReportItems] DROP CONSTRAINT [FK_MerchantReportItems_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantReportItems] DROP CONSTRAINT [FK_MerchantReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_MerchantReportItemsTempStore_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[MerchantReportItemsTempStore] DROP CONSTRAINT [FK_MerchantReportItemsTempStore_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_1];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_2];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_3];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_4];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_5];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_6];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_7];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_8];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_PhotoReportTags_9]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_9];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_PhotoReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PhotoReportItems] DROP CONSTRAINT [FK_PhotoReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItems_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItems] DROP CONSTRAINT [FK_PortionReportItems_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItems_Categories3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItems] DROP CONSTRAINT [FK_PortionReportItems_Categories3];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItems] DROP CONSTRAINT [FK_PortionReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItems] DROP CONSTRAINT [FK_PortionReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItemsTempStore_Brands]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItemsTempStore] DROP CONSTRAINT [FK_PortionReportItemsTempStore_Brands];
GO
IF OBJECT_ID(N'[dbo].[FK_PortionReportItemsTempStore_Categories3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PortionReportItemsTempStore] DROP CONSTRAINT [FK_PortionReportItemsTempStore_Categories3];
GO
IF OBJECT_ID(N'[dbo].[FK_Reports_ReportTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_Reports_ReportTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_Reports_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_Reports_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Reports_Visits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Reports] DROP CONSTRAINT [FK_Reports_Visits];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOfficeExceptions_RouteClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOfficeExceptions] DROP CONSTRAINT [FK_RouteClientOfficeExceptions_RouteClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOfficeExceptions_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOfficeExceptions] DROP CONSTRAINT [FK_RouteClientOfficeExceptions_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOffices_ClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOffices] DROP CONSTRAINT [FK_RouteClientOffices_ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOffices_Routes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOffices] DROP CONSTRAINT [FK_RouteClientOffices_Routes];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOffices_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOffices] DROP CONSTRAINT [FK_RouteClientOffices_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOfficesDistincts_ClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOfficesDistincts] DROP CONSTRAINT [FK_RouteClientOfficesDistincts_ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOfficesDistincts_Routes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOfficesDistincts] DROP CONSTRAINT [FK_RouteClientOfficesDistincts_Routes];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteClientOfficesDistincts_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RouteClientOfficesDistincts] DROP CONSTRAINT [FK_RouteClientOfficesDistincts_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Routes_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [FK_Routes_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_SellOutReportItems_SellOutReportItemTypes]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SellOutReportItems] DROP CONSTRAINT [FK_SellOutReportItems_SellOutReportItemTypes];
GO
IF OBJECT_ID(N'[dbo].[FK_SellOutReportItems_SellOutReports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SellOutReportItems] DROP CONSTRAINT [FK_SellOutReportItems_SellOutReports];
GO
IF OBJECT_ID(N'[dbo].[FK_SellOutReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SellOutReportItems] DROP CONSTRAINT [FK_SellOutReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_SkuAvgPrices_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkuAvgPrices] DROP CONSTRAINT [FK_SkuAvgPrices_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_SkuExclusiveMappings_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SkuExclusiveMappings] DROP CONSTRAINT [FK_SkuExclusiveMappings_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_Skus_Categories4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Skus] DROP CONSTRAINT [FK_Skus_Categories4];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingReportItemParticipants_TrainingReportItems]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingReportItemParticipants] DROP CONSTRAINT [FK_TrainingReportItemParticipants_TrainingReportItems];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingReportItemParticipants_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingReportItemParticipants] DROP CONSTRAINT [FK_TrainingReportItemParticipants_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingReportItems_Reports]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingReportItems] DROP CONSTRAINT [FK_TrainingReportItems_Reports];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingReportItems_Trainings]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingReportItems] DROP CONSTRAINT [FK_TrainingReportItems_Trainings];
GO
IF OBJECT_ID(N'[dbo].[FK_TrainingReportItems_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TrainingReportItems] DROP CONSTRAINT [FK_TrainingReportItems_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Cities]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Cities];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_ClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Users_Users1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_Users_Users1];
GO
IF OBJECT_ID(N'[dbo].[FK_VisitRulesType1_VisitRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitRulesType1] DROP CONSTRAINT [FK_VisitRulesType1_VisitRules];
GO
IF OBJECT_ID(N'[dbo].[FK_VisitRulesType2_VisitRules]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VisitRulesType2] DROP CONSTRAINT [FK_VisitRulesType2_VisitRules];
GO
IF OBJECT_ID(N'[dbo].[FK_Visits_ClientOffices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Visits] DROP CONSTRAINT [FK_Visits_ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[FK_Visits_Users]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Visits] DROP CONSTRAINT [FK_Visits_Users];
GO
IF OBJECT_ID(N'[dbo].[FK_Visits_Users_Supervisors]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Visits] DROP CONSTRAINT [FK_Visits_Users_Supervisors];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AdvCampaignMaterialMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvCampaignMaterialMappings];
GO
IF OBJECT_ID(N'[dbo].[AdvCampaignMaterials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvCampaignMaterials];
GO
IF OBJECT_ID(N'[dbo].[AdvCampaignReportItemMaterials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvCampaignReportItemMaterials];
GO
IF OBJECT_ID(N'[dbo].[AdvCampaignReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvCampaignReportItems];
GO
IF OBJECT_ID(N'[dbo].[AdvCampaigns]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvCampaigns];
GO
IF OBJECT_ID(N'[dbo].[Advertising]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Advertising];
GO
IF OBJECT_ID(N'[dbo].[AdvertisingReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdvertisingReportItems];
GO
IF OBJECT_ID(N'[dbo].[BenchCategories1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BenchCategories1];
GO
IF OBJECT_ID(N'[dbo].[BenchReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BenchReportItems];
GO
IF OBJECT_ID(N'[dbo].[BenchReportItemsTempStore]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BenchReportItemsTempStore];
GO
IF OBJECT_ID(N'[dbo].[BenchSkus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BenchSkus];
GO
IF OBJECT_ID(N'[dbo].[Brands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Brands];
GO
IF OBJECT_ID(N'[dbo].[Categories1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories1];
GO
IF OBJECT_ID(N'[dbo].[Categories2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories2];
GO
IF OBJECT_ID(N'[dbo].[Categories3]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories3];
GO
IF OBJECT_ID(N'[dbo].[Categories4]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories4];
GO
IF OBJECT_ID(N'[dbo].[Category1BrandMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category1BrandMappings];
GO
IF OBJECT_ID(N'[dbo].[Category1UserSubroleMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Category1UserSubroleMappings];
GO
IF OBJECT_ID(N'[dbo].[Cities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cities];
GO
IF OBJECT_ID(N'[dbo].[ClientOffices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClientOffices];
GO
IF OBJECT_ID(N'[dbo].[Clients]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Clients];
GO
IF OBJECT_ID(N'[dbo].[CompetitorAdvertising]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompetitorAdvertising];
GO
IF OBJECT_ID(N'[dbo].[CompetitorReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompetitorReportItems];
GO
IF OBJECT_ID(N'[dbo].[CompetitorReports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CompetitorReports];
GO
IF OBJECT_ID(N'[dbo].[ListingClientOfficeMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ListingClientOfficeMappings];
GO
IF OBJECT_ID(N'[dbo].[Listings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Listings];
GO
IF OBJECT_ID(N'[dbo].[ListingSKUMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ListingSKUMappings];
GO
IF OBJECT_ID(N'[dbo].[MerchantReportCopied]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MerchantReportCopied];
GO
IF OBJECT_ID(N'[dbo].[MerchantReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MerchantReportItems];
GO
IF OBJECT_ID(N'[dbo].[MerchantReportItemsTempStore]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MerchantReportItemsTempStore];
GO
IF OBJECT_ID(N'[dbo].[PhotoReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhotoReportItems];
GO
IF OBJECT_ID(N'[dbo].[PhotoReportTags]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PhotoReportTags];
GO
IF OBJECT_ID(N'[dbo].[PortionReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PortionReportItems];
GO
IF OBJECT_ID(N'[dbo].[PortionReportItemsTempStore]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PortionReportItemsTempStore];
GO
IF OBJECT_ID(N'[dbo].[Reports]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Reports];
GO
IF OBJECT_ID(N'[dbo].[ReportTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ReportTypes];
GO
IF OBJECT_ID(N'[dbo].[RouteClientOfficeExceptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RouteClientOfficeExceptions];
GO
IF OBJECT_ID(N'[dbo].[RouteClientOffices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RouteClientOffices];
GO
IF OBJECT_ID(N'[dbo].[RouteClientOfficesDistincts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RouteClientOfficesDistincts];
GO
IF OBJECT_ID(N'[dbo].[Routes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Routes];
GO
IF OBJECT_ID(N'[dbo].[SellOutReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SellOutReportItems];
GO
IF OBJECT_ID(N'[dbo].[SellOutReportItemTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SellOutReportItemTypes];
GO
IF OBJECT_ID(N'[dbo].[SkuAvgPrices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkuAvgPrices];
GO
IF OBJECT_ID(N'[dbo].[SkuExclusiveMappings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SkuExclusiveMappings];
GO
IF OBJECT_ID(N'[dbo].[Skus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Skus];
GO
IF OBJECT_ID(N'[dbo].[TrainingReportItemParticipants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingReportItemParticipants];
GO
IF OBJECT_ID(N'[dbo].[TrainingReportItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TrainingReportItems];
GO
IF OBJECT_ID(N'[dbo].[Trainings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trainings];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[VisitRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VisitRules];
GO
IF OBJECT_ID(N'[dbo].[VisitRulesType1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VisitRulesType1];
GO
IF OBJECT_ID(N'[dbo].[VisitRulesType2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VisitRulesType2];
GO
IF OBJECT_ID(N'[dbo].[Visits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Visits];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AdvCampaignMaterials'
CREATE TABLE [dbo].[AdvCampaignMaterials] (
    [AdvCampaignMaterialID] int IDENTITY(1,1) NOT NULL,
    [AdvCampaignMaterialName] nvarchar(64)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'AdvCampaignReportItemMaterials'
CREATE TABLE [dbo].[AdvCampaignReportItemMaterials] (
    [AdvCampaignReportItemGUID] uniqueidentifier  NOT NULL,
    [AdvCampaignMaterialID] int  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [AdvCampaignReportItemMaterialOwner] nvarchar(64)  NOT NULL,
    [AdvCampaignReportItemMaterialQty] decimal(18,6)  NOT NULL,
    [AdvCampaignReportItemMaterialComment] nvarchar(256)  NULL
);
GO

-- Creating table 'AdvCampaignReportItems'
CREATE TABLE [dbo].[AdvCampaignReportItems] (
    [AdvCampaignReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [AdvCampaignReportItemOwner] nvarchar(64)  NOT NULL,
    [AdvCampaignID] int  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'AdvCampaigns'
CREATE TABLE [dbo].[AdvCampaigns] (
    [AdvCampaignID] int IDENTITY(1,1) NOT NULL,
    [AdvCampaignName] nvarchar(64)  NOT NULL,
    [AdvCampaignActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'Advertisings'
CREATE TABLE [dbo].[Advertisings] (
    [AdvertisingID] int IDENTITY(1,1) NOT NULL,
    [AdvertisingName] nvarchar(64)  NOT NULL,
    [AdvertisingShortName] nvarchar(64)  NOT NULL,
    [AdvertisingValidThrough] datetime  NOT NULL,
    [AdvertisingActiveThrough] datetime  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'AdvertisingReportItems'
CREATE TABLE [dbo].[AdvertisingReportItems] (
    [AdvertisingReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [AdvertisingReportItemOwner] nvarchar(64)  NOT NULL,
    [AdvertisingID] int  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'BenchCategories1'
CREATE TABLE [dbo].[BenchCategories1] (
    [BenchCategory1ID] int IDENTITY(1,1) NOT NULL,
    [BenchCategory1Name] nvarchar(64)  NOT NULL,
    [BenchCategory1Active] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'BenchReportItems'
CREATE TABLE [dbo].[BenchReportItems] (
    [BenchReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [BenchReportItemOwner] nvarchar(64)  NOT NULL,
    [BenchSkuID] int  NOT NULL,
    [BenchReportItemPrice] decimal(18,6)  NOT NULL,
    [BenchReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'BenchReportItemsTempStores'
CREATE TABLE [dbo].[BenchReportItemsTempStores] (
    [BenchReportItemTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [BenchSkuID] int  NOT NULL,
    [BenchReportItemPrice] decimal(18,6)  NOT NULL,
    [BenchReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [TempStoreCreatedWhen] datetime  NOT NULL
);
GO

-- Creating table 'BenchSkus'
CREATE TABLE [dbo].[BenchSkus] (
    [BenchSkuID] int IDENTITY(1,1) NOT NULL,
    [BenchCategory1ID] int  NOT NULL,
    [BrandID] int  NOT NULL,
    [BenchSkuCode] nvarchar(64)  NOT NULL,
    [BenchSkuName] nvarchar(256)  NULL,
    [BenchSkuVol] int  NULL,
    [BenchSkuPackSize] int  NULL,
    [BenchSkuActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'Brands'
CREATE TABLE [dbo].[Brands] (
    [BrandID] int IDENTITY(1,1) NOT NULL,
    [BrandName] nvarchar(64)  NOT NULL,
    [BrandActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'Categories1'
CREATE TABLE [dbo].[Categories1] (
    [Category1ID] int IDENTITY(1,1) NOT NULL,
    [Category1Name] nvarchar(64)  NOT NULL,
    [Category2Count] int  NOT NULL,
    [Category1Active] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [Category1NameEng] nvarchar(64)  NULL,
    [Category1OutputToMerchXls] bit  NOT NULL
);
GO

-- Creating table 'Categories2'
CREATE TABLE [dbo].[Categories2] (
    [Category2ID] int IDENTITY(1,1) NOT NULL,
    [Category1ID] int  NOT NULL,
    [Category2Name] nvarchar(64)  NOT NULL,
    [Category3Count] int  NOT NULL,
    [Category2Active] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [Category2NameEng] nvarchar(64)  NULL,
    [Category2OutputToMerchXls] bit  NOT NULL,
    [Category2NoSalesQty] bit  NOT NULL
);
GO

-- Creating table 'Categories3'
CREATE TABLE [dbo].[Categories3] (
    [Category3ID] int IDENTITY(1,1) NOT NULL,
    [Category2ID] int  NOT NULL,
    [Category3Name] nvarchar(64)  NOT NULL,
    [Category4Count] int  NOT NULL,
    [Category3Active] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [Category3NameEng] nvarchar(64)  NULL,
    [Category3OutputToMerchXls] bit  NOT NULL
);
GO

-- Creating table 'Categories4'
CREATE TABLE [dbo].[Categories4] (
    [Category4ID] int IDENTITY(1,1) NOT NULL,
    [Category3ID] int  NOT NULL,
    [Category4Name] nvarchar(64)  NOT NULL,
    [SkuCount] int  NOT NULL,
    [Category4Active] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [Category4NameEng] nvarchar(64)  NULL,
    [Category4OutputToMerchXls] bit  NOT NULL
);
GO

-- Creating table 'Category1UserSubroleMappings'
CREATE TABLE [dbo].[Category1UserSubroleMappings] (
    [Category1ID] int  NOT NULL,
    [UserSubroleID] int  NOT NULL
);
GO

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [CityID] int IDENTITY(1,1) NOT NULL,
    [RegionID] int  NOT NULL,
    [CityName] nvarchar(32)  NOT NULL,
    [CityOfficeCount] int  NOT NULL,
    [CityActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'ClientOffices'
CREATE TABLE [dbo].[ClientOffices] (
    [ClientOfficeID] int IDENTITY(1,1) NOT NULL,
    [ClientOfficeClassificationID] int  NOT NULL,
    [ClientID] int  NOT NULL,
    [CityID] int  NOT NULL,
    [SupervisorUserLoginName] nvarchar(64)  NULL,
    [MerchSupervisorUserLoginName1] nvarchar(64)  NULL,
    [MerchSupervisorUserLoginName2] nvarchar(64)  NULL,
    [MerchSupervisorUserLoginName3] nvarchar(64)  NULL,
    [MerchSupervisorUserLoginName4] nvarchar(64)  NULL,
    [MerchSupervisorUserLoginName5] nvarchar(64)  NULL,
    [ClientOfficeName] nvarchar(64)  NULL,
    [ClientOfficeShortName] nvarchar(64)  NOT NULL,
    [ClientOfficeAddress] nvarchar(256)  NOT NULL,
    [ClientOfficeActive] bit  NOT NULL,
    [ClientOfficeComments] nvarchar(256)  NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [ClientOfficeClassificationExternal] nvarchar(64)  NULL,
    [SupervisorUserLoginName2] nvarchar(64)  NULL,
    [SupervisorUserLoginName3] nvarchar(64)  NULL,
    [SupervisorUserLoginName4] nvarchar(64)  NULL,
    [SupervisorUserLoginName5] nvarchar(64)  NULL,
    [ClientOfficeArea] decimal(18,6)  NULL,
    [AnalystUserLoginName1] nvarchar(64)  NULL,
    [AnalystUserLoginName2] nvarchar(64)  NULL,
    [AnalystUserLoginName3] nvarchar(64)  NULL,
    [AnalystUserLoginName4] nvarchar(64)  NULL,
    [AnalystUserLoginName5] nvarchar(64)  NULL,
    [ClientOfficeNumberExternal] nvarchar(64)  NULL,
    [ClientOfficeFocusSubcategory] nvarchar(64)  NULL,
    [ClientOfficeShowInPlans] bit  NOT NULL,
    [ClientOfficeShelfVolume] int  NULL,
    [ClientOfficeTrafficID] int  NULL,
    [ClientOfficeTypeID] int  NULL,
    [ClientOfficeSKUQuantity] int  NULL,
    [ClientOfficeLGConsultants] int  NULL,
    [ClientOfficeSamsungConsultants] int  NULL,
    [ClientOfficeToshibaConsultants] int  NULL,
    [ClientOfficeSonyConsultants] int  NULL,
    [ClientOfficePanasonicConsultants] int  NULL,
    [ClientOfficeTotalSelloutCurrent] decimal(10,2)  NULL,
    [ClientOfficeTotalSelloutPrevious] decimal(10,2)  NULL,
    [ClientOfficePhilipsSelloutCurrent] decimal(10,2)  NULL,
    [ClientOfficePhilipsSelloutPrevious] decimal(10,2)  NULL,
    [ClientOfficeClassificationRR] nvarchar(64)  NULL
);
GO

-- Creating table 'Clients'
CREATE TABLE [dbo].[Clients] (
    [ClientID] int IDENTITY(1,1) NOT NULL,
    [ClientClassificationID] int  NOT NULL,
    [VisitRuleID] int  NOT NULL,
    [ClientName] nvarchar(64)  NOT NULL,
    [ClientOfficeCount] int  NOT NULL,
    [ClientActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [CountryID] int  NOT NULL,
    [ClientUseMinSkuQty] bit  NOT NULL,
    [SortOrderInFilter] int  NULL
);
GO

-- Creating table 'CompetitorAdvertisings'
CREATE TABLE [dbo].[CompetitorAdvertisings] (
    [CompetitorAdvertisingGeneration] int  NOT NULL,
    [CompetitorAdvertisingNum] int  NOT NULL,
    [CompetitorAdvertisingName] nvarchar(64)  NOT NULL,
    [CompetitorAdvertisingOrderNum] int  NOT NULL
);
GO

-- Creating table 'CompetitorReportItems'
CREATE TABLE [dbo].[CompetitorReportItems] (
    [CompetitorReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [CompetitorReportItemOwner] nvarchar(64)  NOT NULL,
    [Category3ID] int  NOT NULL,
    [BrandID] int  NOT NULL,
    [CompetitorReportItemStartDate] datetime  NOT NULL,
    [CompetitorReportItemEndDate] datetime  NOT NULL,
    [CompetitorReportItemDescription] nvarchar(256)  NOT NULL,
    [CompetitorAdvertisingNum1] bit  NOT NULL,
    [CompetitorAdvertisingNum2] bit  NOT NULL,
    [CompetitorAdvertisingNum3] bit  NOT NULL,
    [CompetitorAdvertisingNum4] bit  NOT NULL,
    [CompetitorAdvertisingNum5] bit  NOT NULL,
    [CompetitorAdvertisingNum6] bit  NOT NULL,
    [CompetitorAdvertisingNum7] bit  NOT NULL,
    [CompetitorAdvertisingNum8] bit  NOT NULL,
    [CompetitorAdvertisingNum9] bit  NOT NULL,
    [CompetitorAdvertisingNum10] bit  NOT NULL,
    [CompetitorAdvertisingNum11] bit  NOT NULL,
    [CompetitorAdvertisingNum12] bit  NOT NULL,
    [CompetitorAdvertisingNum13] bit  NOT NULL,
    [CompetitorAdvertisingNum14] bit  NOT NULL,
    [CompetitorAdvertisingNum15] bit  NOT NULL,
    [CompetitorAdvertisingNum16] bit  NOT NULL,
    [CompetitorAdvertisingNum17] bit  NOT NULL,
    [CompetitorAdvertisingNum18] bit  NOT NULL,
    [CompetitorAdvertisingNum19] bit  NOT NULL,
    [CompetitorAdvertisingNum20] bit  NOT NULL,
    [CompetitorAdvertisingNum21] bit  NOT NULL,
    [CompetitorAdvertisingNum22] bit  NOT NULL,
    [CompetitorAdvertisingNum23] bit  NOT NULL,
    [CompetitorAdvertisingNum24] bit  NOT NULL,
    [CompetitorAdvertisingNum25] bit  NOT NULL,
    [CompetitorAdvertisingNum26] bit  NOT NULL,
    [CompetitorAdvertisingNum27] bit  NOT NULL,
    [CompetitorAdvertisingNum28] bit  NOT NULL,
    [CompetitorAdvertisingNum29] bit  NOT NULL,
    [CompetitorAdvertisingNum30] bit  NOT NULL,
    [CompetitorAdvertisingNum31] bit  NOT NULL,
    [CompetitorAdvertisingNum32] bit  NOT NULL,
    [CompetitorAdvertisingNum33] bit  NOT NULL,
    [CompetitorAdvertisingNum34] bit  NOT NULL,
    [CompetitorAdvertisingNum35] bit  NOT NULL,
    [CompetitorAdvertisingNum36] bit  NOT NULL,
    [CompetitorAdvertisingNum37] bit  NOT NULL,
    [CompetitorAdvertisingNum38] bit  NOT NULL,
    [CompetitorAdvertisingNum39] bit  NOT NULL,
    [CompetitorAdvertisingNum40] bit  NOT NULL,
    [CompetitorAdvertisingNum41] bit  NOT NULL,
    [CompetitorAdvertisingNum42] bit  NOT NULL,
    [CompetitorAdvertisingNum43] bit  NOT NULL,
    [CompetitorAdvertisingNum44] bit  NOT NULL,
    [CompetitorAdvertisingNum45] bit  NOT NULL,
    [CompetitorAdvertisingNum46] bit  NOT NULL,
    [CompetitorAdvertisingNum47] bit  NOT NULL,
    [CompetitorAdvertisingNum48] bit  NOT NULL,
    [CompetitorAdvertisingNum49] bit  NOT NULL,
    [CompetitorAdvertisingNum50] bit  NOT NULL,
    [CompetitorAdvertisingNum51] bit  NOT NULL,
    [CompetitorAdvertisingNum52] bit  NOT NULL,
    [CompetitorAdvertisingNum53] bit  NOT NULL,
    [CompetitorAdvertisingNum54] bit  NOT NULL,
    [CompetitorAdvertisingNum55] bit  NOT NULL,
    [CompetitorAdvertisingNum56] bit  NOT NULL,
    [CompetitorAdvertisingNum57] bit  NOT NULL,
    [CompetitorAdvertisingNum58] bit  NOT NULL,
    [CompetitorAdvertisingNum59] bit  NOT NULL,
    [CompetitorAdvertisingNum60] bit  NOT NULL,
    [CompetitorAdvertisingNum61] bit  NOT NULL,
    [CompetitorAdvertisingNum62] bit  NOT NULL,
    [CompetitorAdvertisingNum63] bit  NOT NULL,
    [CompetitorAdvertisingNum64] bit  NOT NULL,
    [CompetitorAdvertisingNum65] bit  NOT NULL,
    [CompetitorAdvertisingNum66] bit  NOT NULL,
    [CompetitorAdvertisingNum67] bit  NOT NULL,
    [CompetitorAdvertisingNum68] bit  NOT NULL,
    [CompetitorAdvertisingNum69] bit  NOT NULL,
    [CompetitorAdvertisingNum70] bit  NOT NULL,
    [CompetitorAdvertisingNum71] bit  NOT NULL,
    [CompetitorAdvertisingNum72] bit  NOT NULL,
    [CompetitorAdvertisingNum73] bit  NOT NULL,
    [CompetitorAdvertisingNum74] bit  NOT NULL,
    [CompetitorAdvertisingNum75] bit  NOT NULL,
    [CompetitorAdvertisingNum76] bit  NOT NULL,
    [CompetitorAdvertisingNum77] bit  NOT NULL,
    [CompetitorAdvertisingNum78] bit  NOT NULL,
    [CompetitorAdvertisingNum79] bit  NOT NULL,
    [CompetitorAdvertisingNum80] bit  NOT NULL,
    [CompetitorAdvertisingNum81] bit  NOT NULL,
    [CompetitorAdvertisingNum82] bit  NOT NULL,
    [CompetitorAdvertisingNum83] bit  NOT NULL,
    [CompetitorAdvertisingNum84] bit  NOT NULL,
    [CompetitorAdvertisingNum85] bit  NOT NULL,
    [CompetitorAdvertisingNum86] bit  NOT NULL,
    [CompetitorAdvertisingNum87] bit  NOT NULL,
    [CompetitorAdvertisingNum88] bit  NOT NULL,
    [CompetitorAdvertisingNum89] bit  NOT NULL,
    [CompetitorAdvertisingNum90] bit  NOT NULL,
    [CompetitorAdvertisingNum91] bit  NOT NULL,
    [CompetitorAdvertisingNum92] bit  NOT NULL,
    [CompetitorAdvertisingNum93] bit  NOT NULL,
    [CompetitorAdvertisingNum94] bit  NOT NULL,
    [CompetitorAdvertisingNum95] bit  NOT NULL,
    [CompetitorAdvertisingNum96] bit  NOT NULL,
    [CompetitorAdvertisingNum97] bit  NOT NULL,
    [CompetitorAdvertisingNum98] bit  NOT NULL,
    [CompetitorAdvertisingNum99] bit  NOT NULL,
    [CompetitorAdvertisingNum100] bit  NOT NULL,
    [CompetitorAdvertisingNum101] bit  NOT NULL,
    [CompetitorAdvertisingNum102] bit  NOT NULL,
    [CompetitorAdvertisingNum103] bit  NOT NULL,
    [CompetitorAdvertisingNum104] bit  NOT NULL,
    [CompetitorAdvertisingNum105] bit  NOT NULL,
    [CompetitorAdvertisingNum106] bit  NOT NULL,
    [CompetitorAdvertisingNum107] bit  NOT NULL,
    [CompetitorAdvertisingNum108] bit  NOT NULL,
    [CompetitorAdvertisingNum109] bit  NOT NULL,
    [CompetitorAdvertisingNum110] bit  NOT NULL,
    [CompetitorAdvertisingNum111] bit  NOT NULL,
    [CompetitorAdvertisingNum112] bit  NOT NULL,
    [CompetitorAdvertisingNum113] bit  NOT NULL,
    [CompetitorAdvertisingNum114] bit  NOT NULL,
    [CompetitorAdvertisingNum115] bit  NOT NULL,
    [CompetitorAdvertisingNum116] bit  NOT NULL,
    [CompetitorAdvertisingNum117] bit  NOT NULL,
    [CompetitorAdvertisingNum118] bit  NOT NULL,
    [CompetitorAdvertisingNum119] bit  NOT NULL,
    [CompetitorAdvertisingNum120] bit  NOT NULL,
    [CompetitorAdvertisingNum121] bit  NOT NULL,
    [CompetitorAdvertisingNum122] bit  NOT NULL,
    [CompetitorAdvertisingNum123] bit  NOT NULL,
    [CompetitorAdvertisingNum124] bit  NOT NULL,
    [CompetitorAdvertisingNum125] bit  NOT NULL,
    [CompetitorAdvertisingNum126] bit  NOT NULL,
    [CompetitorAdvertisingNum127] bit  NOT NULL,
    [CompetitorAdvertisingNum128] bit  NOT NULL,
    [CompetitorAdvertisingNum129] bit  NOT NULL,
    [CompetitorAdvertisingNum130] bit  NOT NULL,
    [CompetitorAdvertisingNum131] bit  NOT NULL,
    [CompetitorAdvertisingNum132] bit  NOT NULL,
    [CompetitorAdvertisingNum133] bit  NOT NULL,
    [CompetitorAdvertisingNum134] bit  NOT NULL,
    [CompetitorAdvertisingNum135] bit  NOT NULL,
    [CompetitorAdvertisingNum136] bit  NOT NULL,
    [CompetitorAdvertisingNum137] bit  NOT NULL,
    [CompetitorAdvertisingNum138] bit  NOT NULL,
    [CompetitorAdvertisingNum139] bit  NOT NULL,
    [CompetitorAdvertisingNum140] bit  NOT NULL,
    [CompetitorAdvertisingNum141] bit  NOT NULL,
    [CompetitorAdvertisingNum142] bit  NOT NULL,
    [CompetitorAdvertisingNum143] bit  NOT NULL,
    [CompetitorAdvertisingNum144] bit  NOT NULL,
    [CompetitorAdvertisingNum145] bit  NOT NULL,
    [CompetitorAdvertisingNum146] bit  NOT NULL,
    [CompetitorAdvertisingNum147] bit  NOT NULL,
    [CompetitorAdvertisingNum148] bit  NOT NULL,
    [CompetitorAdvertisingNum149] bit  NOT NULL,
    [CompetitorAdvertisingNum150] bit  NOT NULL,
    [CompetitorAdvertisingNum151] bit  NOT NULL,
    [CompetitorAdvertisingNum152] bit  NOT NULL,
    [CompetitorAdvertisingNum153] bit  NOT NULL,
    [CompetitorAdvertisingNum154] bit  NOT NULL,
    [CompetitorAdvertisingNum155] bit  NOT NULL,
    [CompetitorAdvertisingNum156] bit  NOT NULL,
    [CompetitorAdvertisingNum157] bit  NOT NULL,
    [CompetitorAdvertisingNum158] bit  NOT NULL,
    [CompetitorAdvertisingNum159] bit  NOT NULL,
    [CompetitorAdvertisingNum160] bit  NOT NULL,
    [CompetitorAdvertisingNum161] bit  NOT NULL,
    [CompetitorAdvertisingNum162] bit  NOT NULL,
    [CompetitorAdvertisingNum163] bit  NOT NULL,
    [CompetitorAdvertisingNum164] bit  NOT NULL,
    [CompetitorAdvertisingNum165] bit  NOT NULL,
    [CompetitorAdvertisingNum166] bit  NOT NULL,
    [CompetitorAdvertisingNum167] bit  NOT NULL,
    [CompetitorAdvertisingNum168] bit  NOT NULL,
    [CompetitorAdvertisingNum169] bit  NOT NULL,
    [CompetitorAdvertisingNum170] bit  NOT NULL,
    [CompetitorAdvertisingNum171] bit  NOT NULL,
    [CompetitorAdvertisingNum172] bit  NOT NULL,
    [CompetitorAdvertisingNum173] bit  NOT NULL,
    [CompetitorAdvertisingNum174] bit  NOT NULL,
    [CompetitorAdvertisingNum175] bit  NOT NULL,
    [CompetitorAdvertisingNum176] bit  NOT NULL,
    [CompetitorAdvertisingNum177] bit  NOT NULL,
    [CompetitorAdvertisingNum178] bit  NOT NULL,
    [CompetitorAdvertisingNum179] bit  NOT NULL,
    [CompetitorAdvertisingNum180] bit  NOT NULL,
    [CompetitorAdvertisingNum181] bit  NOT NULL,
    [CompetitorAdvertisingNum182] bit  NOT NULL,
    [CompetitorAdvertisingNum183] bit  NOT NULL,
    [CompetitorAdvertisingNum184] bit  NOT NULL,
    [CompetitorAdvertisingNum185] bit  NOT NULL,
    [CompetitorAdvertisingNum186] bit  NOT NULL,
    [CompetitorAdvertisingNum187] bit  NOT NULL,
    [CompetitorAdvertisingNum188] bit  NOT NULL,
    [CompetitorAdvertisingNum189] bit  NOT NULL,
    [CompetitorAdvertisingNum190] bit  NOT NULL,
    [CompetitorAdvertisingNum191] bit  NOT NULL,
    [CompetitorAdvertisingNum192] bit  NOT NULL,
    [CompetitorAdvertisingNum193] bit  NOT NULL,
    [CompetitorAdvertisingNum194] bit  NOT NULL,
    [CompetitorAdvertisingNum195] bit  NOT NULL,
    [CompetitorAdvertisingNum196] bit  NOT NULL,
    [CompetitorAdvertisingNum197] bit  NOT NULL,
    [CompetitorAdvertisingNum198] bit  NOT NULL,
    [CompetitorAdvertisingNum199] bit  NOT NULL,
    [CompetitorAdvertisingNum200] bit  NOT NULL,
    [CompetitorAdvertisingNum201] bit  NOT NULL,
    [CompetitorAdvertisingNum202] bit  NOT NULL,
    [CompetitorAdvertisingNum203] bit  NOT NULL,
    [CompetitorAdvertisingNum204] bit  NOT NULL,
    [CompetitorAdvertisingNum205] bit  NOT NULL,
    [CompetitorAdvertisingNum206] bit  NOT NULL,
    [CompetitorAdvertisingNum207] bit  NOT NULL,
    [CompetitorAdvertisingNum208] bit  NOT NULL,
    [CompetitorAdvertisingNum209] bit  NOT NULL,
    [CompetitorAdvertisingNum210] bit  NOT NULL,
    [CompetitorAdvertisingNum211] bit  NOT NULL,
    [CompetitorAdvertisingNum212] bit  NOT NULL,
    [CompetitorAdvertisingNum213] bit  NOT NULL,
    [CompetitorAdvertisingNum214] bit  NOT NULL,
    [CompetitorAdvertisingNum215] bit  NOT NULL,
    [CompetitorAdvertisingNum216] bit  NOT NULL,
    [CompetitorAdvertisingNum217] bit  NOT NULL,
    [CompetitorAdvertisingNum218] bit  NOT NULL,
    [CompetitorAdvertisingNum219] bit  NOT NULL,
    [CompetitorAdvertisingNum220] bit  NOT NULL,
    [CompetitorAdvertisingNum221] bit  NOT NULL,
    [CompetitorAdvertisingNum222] bit  NOT NULL,
    [CompetitorAdvertisingNum223] bit  NOT NULL,
    [CompetitorAdvertisingNum224] bit  NOT NULL,
    [CompetitorAdvertisingNum225] bit  NOT NULL,
    [CompetitorAdvertisingNum226] bit  NOT NULL,
    [CompetitorAdvertisingNum227] bit  NOT NULL,
    [CompetitorAdvertisingNum228] bit  NOT NULL,
    [CompetitorAdvertisingNum229] bit  NOT NULL,
    [CompetitorAdvertisingNum230] bit  NOT NULL,
    [CompetitorAdvertisingNum231] bit  NOT NULL,
    [CompetitorAdvertisingNum232] bit  NOT NULL,
    [CompetitorAdvertisingNum233] bit  NOT NULL,
    [CompetitorAdvertisingNum234] bit  NOT NULL,
    [CompetitorAdvertisingNum235] bit  NOT NULL,
    [CompetitorAdvertisingNum236] bit  NOT NULL,
    [CompetitorAdvertisingNum237] bit  NOT NULL,
    [CompetitorAdvertisingNum238] bit  NOT NULL,
    [CompetitorAdvertisingNum239] bit  NOT NULL,
    [CompetitorAdvertisingNum240] bit  NOT NULL,
    [CompetitorAdvertisingNum241] bit  NOT NULL,
    [CompetitorAdvertisingNum242] bit  NOT NULL,
    [CompetitorAdvertisingNum243] bit  NOT NULL,
    [CompetitorAdvertisingNum244] bit  NOT NULL,
    [CompetitorAdvertisingNum245] bit  NOT NULL,
    [CompetitorAdvertisingNum246] bit  NOT NULL,
    [CompetitorAdvertisingNum247] bit  NOT NULL,
    [CompetitorAdvertisingNum248] bit  NOT NULL,
    [CompetitorAdvertisingNum249] bit  NOT NULL,
    [CompetitorAdvertisingNum250] bit  NOT NULL,
    [CompetitorAdvertisingNum251] bit  NOT NULL,
    [CompetitorAdvertisingNum252] bit  NOT NULL,
    [CompetitorAdvertisingNum253] bit  NOT NULL,
    [CompetitorAdvertisingNum254] bit  NOT NULL,
    [CompetitorAdvertisingNum255] bit  NOT NULL,
    [CompetitorAdvertisingNum256] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'CompetitorReports'
CREATE TABLE [dbo].[CompetitorReports] (
    [ReportGUID] uniqueidentifier  NOT NULL,
    [CompetitorReportOwner] nvarchar(64)  NOT NULL,
    [CompetitorAdvertisingGeneration] int  NOT NULL
);
GO

-- Creating table 'ListingClientOfficeMappings'
CREATE TABLE [dbo].[ListingClientOfficeMappings] (
    [MappingID] int IDENTITY(1,1) NOT NULL,
    [ClientOfficeID] int  NOT NULL,
    [ListingID] int  NOT NULL,
    [UsersAffected] nvarchar(max)  NULL,
    [UsersAffectedHash] varbinary(8000)  NULL
);
GO

-- Creating table 'Listings'
CREATE TABLE [dbo].[Listings] (
    [ListingID] int IDENTITY(1,1) NOT NULL,
    [ListingName] nvarchar(100)  NOT NULL,
    [UsersAffected] nvarchar(max)  NULL,
    [UsersAffectedHash] varbinary(8000)  NULL
);
GO

-- Creating table 'ListingSKUMappings'
CREATE TABLE [dbo].[ListingSKUMappings] (
    [MappingID] int IDENTITY(1,1) NOT NULL,
    [ListingID] int  NOT NULL,
    [SkuID] int  NOT NULL,
    [IsAdditional] bit  NOT NULL,
    [UsersAffected] nvarchar(max)  NULL,
    [UsersAffectedHash] varbinary(8000)  NULL
);
GO

-- Creating table 'MerchantReportCopieds'
CREATE TABLE [dbo].[MerchantReportCopieds] (
    [ReportGUID] uniqueidentifier  NOT NULL,
    [FromReportGUID] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'MerchantReportItems'
CREATE TABLE [dbo].[MerchantReportItems] (
    [MerchantReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [MerchantReportItemOwner] nvarchar(64)  NOT NULL,
    [SkuID] int  NOT NULL,
    [MerchantReportItemPrice] decimal(18,6)  NOT NULL,
    [MerchantReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [MerchantReportItemOnShelf] decimal(18,6)  NULL
);
GO

-- Creating table 'MerchantReportItemsTempStores'
CREATE TABLE [dbo].[MerchantReportItemsTempStores] (
    [MerchantReportItemTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [SkuID] int  NOT NULL,
    [MerchantReportItemPrice] decimal(18,6)  NOT NULL,
    [MerchantReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [TempStoreCreatedWhen] datetime  NOT NULL,
    [MerchantReportItemOnShelf] decimal(18,6)  NULL
);
GO

-- Creating table 'PhotoReportItems'
CREATE TABLE [dbo].[PhotoReportItems] (
    [PhotoReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [PhotoReportItemOwner] nvarchar(64)  NOT NULL,
    [PhotoReportItemDescription] nvarchar(256)  NULL,
    [PhotoReportItemThumbnail] varbinary(max)  NOT NULL,
    [PhotoReportItemPhoto] varbinary(max)  NOT NULL,
    [PhotoReportItemTagID1] int  NULL,
    [PhotoReportItemTagID2] int  NULL,
    [PhotoReportItemTagID3] int  NULL,
    [PhotoReportItemTagID4] int  NULL,
    [PhotoReportItemTagID5] int  NULL,
    [PhotoReportItemTagID6] int  NULL,
    [PhotoReportItemTagID7] int  NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [PhotoReportItemWidth] int  NOT NULL,
    [PhotoReportItemHeight] int  NOT NULL,
    [PhotoReportItemPhotoModified] varbinary(max)  NULL,
    [PhotoReportItemAngle] int  NOT NULL,
    [PhotoReportItemPreview] varbinary(max)  NULL,
    [PhotoReportItemExifTimeStamp] datetime  NULL,
    [VisitDate] datetime  NULL,
    [PhotoReportItemTagID8] int  NULL,
    [PhotoReportItemTagID9] int  NULL,
    [IsCategory1Selected] bit  NULL,
    [IsCategory2Selected] bit  NULL,
    [IsCategory3Selected] bit  NULL,
    [IsCategory4Selected] bit  NULL
);
GO

-- Creating table 'PhotoReportTags'
CREATE TABLE [dbo].[PhotoReportTags] (
    [PhotoReportTagID] int IDENTITY(1,1) NOT NULL,
    [PhotoReportTagNum] int  NOT NULL,
    [PhotoReportTagName] nvarchar(64)  NOT NULL,
    [PhotoReportTagActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [PhotoReportTagAdditionalCategory] int  NOT NULL,
    [PhotoReportTagPhotoFileGUID] uniqueidentifier  NULL,
    [PhotoReportTagPreviewFileGUID] uniqueidentifier  NULL,
    [PhotoReportTagComments] nvarchar(256)  NULL
);
GO

-- Creating table 'PortionReportItems'
CREATE TABLE [dbo].[PortionReportItems] (
    [PortionReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [PortionReportItemOwner] nvarchar(64)  NOT NULL,
    [Category3ID] int  NOT NULL,
    [BrandID] int  NOT NULL,
    [PortionReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'PortionReportItemsTempStores'
CREATE TABLE [dbo].[PortionReportItemsTempStores] (
    [PortionReportItemTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportTempStoreGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [Category3ID] int  NOT NULL,
    [BrandID] int  NOT NULL,
    [PortionReportItemQty] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [TempStoreCreatedWhen] datetime  NOT NULL
);
GO

-- Creating table 'Reports'
CREATE TABLE [dbo].[Reports] (
    [ReportGUID] uniqueidentifier  NOT NULL,
    [VisitGUID] uniqueidentifier  NULL,
    [ReportOwner] nvarchar(64)  NOT NULL,
    [ReportType] int  NOT NULL,
    [ReportApproved] int  NULL,
    [ReportApprovedBy] nvarchar(64)  NULL,
    [ReportApprovedWhen] datetime  NULL,
    [ReportApprovalComment] nvarchar(256)  NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [VisitDate] datetime  NULL,
    [ReportCreatedWhen] datetime  NULL,
    [ReportFirstSavedWhen] datetime  NULL
);
GO

-- Creating table 'ReportTypes'
CREATE TABLE [dbo].[ReportTypes] (
    [ReportTypeID] int  NOT NULL,
    [UserRoleID] int  NOT NULL,
    [ReportTypeName] nvarchar(32)  NOT NULL,
    [ReportFileName] nvarchar(32)  NOT NULL,
    [ReportTypeAvailableOnSmartDevice] bit  NOT NULL
);
GO

-- Creating table 'RouteClientOfficeExceptions'
CREATE TABLE [dbo].[RouteClientOfficeExceptions] (
    [RouteID] int  NOT NULL,
    [RouteClientOfficeWeekNumber] int  NOT NULL,
    [RouteClientOfficeDayOfWeek] int  NOT NULL,
    [ClientOfficeID] int  NOT NULL,
    [WeekdayDate] datetime  NOT NULL,
    [UserLoginName] nvarchar(64)  NOT NULL
);
GO

-- Creating table 'RouteClientOffices'
CREATE TABLE [dbo].[RouteClientOffices] (
    [RouteID] int  NOT NULL,
    [RouteClientOfficeWeekNumber] int  NOT NULL,
    [RouteClientOfficeDayOfWeek] int  NOT NULL,
    [ClientOfficeID] int  NOT NULL,
    [UserLoginName] nvarchar(64)  NOT NULL
);
GO

-- Creating table 'RouteClientOfficesDistincts'
CREATE TABLE [dbo].[RouteClientOfficesDistincts] (
    [RouteID] int  NOT NULL,
    [ClientOfficeID] int  NOT NULL,
    [UserLoginName] nvarchar(64)  NOT NULL
);
GO

-- Creating table 'Routes'
CREATE TABLE [dbo].[Routes] (
    [RouteID] int IDENTITY(1,1) NOT NULL,
    [UserLoginName] nvarchar(64)  NOT NULL,
    [RouteDateFrom] datetime  NOT NULL,
    [RouteDateTo] datetime  NOT NULL,
    [RouteNumWeeks] int  NOT NULL
);
GO

-- Creating table 'SellOutReportItems'
CREATE TABLE [dbo].[SellOutReportItems] (
    [SellOutReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [SellOutReportItemOwner] nvarchar(64)  NOT NULL,
    [SellOutReportItemTypeID] int  NOT NULL,
    [SellOutReportItemValue] decimal(18,6)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'SellOutReportItemTypes'
CREATE TABLE [dbo].[SellOutReportItemTypes] (
    [SellOutReportItemTypeID] int  NOT NULL,
    [SellOutReportItemTypeNum] int  NOT NULL,
    [SellOutReportItemTypeName] nvarchar(64)  NOT NULL
);
GO

-- Creating table 'SkuAvgPrices'
CREATE TABLE [dbo].[SkuAvgPrices] (
    [SkuID] int  NOT NULL,
    [SkuAvgPrice1] decimal(18,6)  NOT NULL
);
GO

-- Creating table 'SkuExclusiveMappings'
CREATE TABLE [dbo].[SkuExclusiveMappings] (
    [SkuID] int  NOT NULL,
    [ClientClassificationID] int  NOT NULL,
    [ClientID] int  NOT NULL
);
GO

-- Creating table 'Skus'
CREATE TABLE [dbo].[Skus] (
    [SkuID] int IDENTITY(1,1) NOT NULL,
    [Category4ID] int  NOT NULL,
    [SkuName] nvarchar(64)  NOT NULL,
    [SkuCode] nvarchar(64)  NOT NULL,
    [SkuRecPrice] decimal(18,6)  NULL,
    [SkuActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [SkuOutputToMerchXls] bit  NOT NULL,
    [DiagonalID] int  NOT NULL,
    [SkuCodeSorted] nvarchar(64)  NULL
);
GO

-- Creating table 'TrainingReportItemParticipants'
CREATE TABLE [dbo].[TrainingReportItemParticipants] (
    [TrainingReportItemGUID] uniqueidentifier  NOT NULL,
    [TrainingReportItemParticipantGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [TrainingReportItemParticipantOwner] nvarchar(64)  NOT NULL,
    [TrainingReportItemParticipantName] nvarchar(64)  NOT NULL,
    [TrainingReportItemParticipantPhone] nvarchar(64)  NOT NULL
);
GO

-- Creating table 'TrainingReportItems'
CREATE TABLE [dbo].[TrainingReportItems] (
    [TrainingReportItemGUID] uniqueidentifier  NOT NULL,
    [ReportGUID] uniqueidentifier  NOT NULL,
    [TrainingReportItemOwner] nvarchar(64)  NOT NULL,
    [TrainingID] int  NOT NULL,
    [TrainingReportItemNumParticipants] int  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'Trainings'
CREATE TABLE [dbo].[Trainings] (
    [TrainingID] int IDENTITY(1,1) NOT NULL,
    [TrainingName] nvarchar(64)  NOT NULL,
    [TrainingActive] bit  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserLoginName] nvarchar(64)  NOT NULL,
    [UserFullName] nvarchar(64)  NOT NULL,
    [UserPassword] nvarchar(32)  NOT NULL,
    [UserSubroleID] int  NOT NULL,
    [UserEmail] nvarchar(64)  NULL,
    [UserPhone] nvarchar(64)  NULL,
    [UserActive] bit  NOT NULL,
    [CityID] int  NULL,
    [ClientOfficeID] int  NULL,
    [SupervisorUserLoginName] nvarchar(64)  NULL,
    [TsaCategoryID] int  NULL,
    [GradeID] int  NULL,
    [TimezoneID] nvarchar(32)  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [UserHasForumAccess] bit  NOT NULL,
    [CountryID] int  NOT NULL
);
GO

-- Creating table 'VisitRules'
CREATE TABLE [dbo].[VisitRules] (
    [VisitRuleID] int  NOT NULL,
    [VisitRuleName] nvarchar(64)  NOT NULL,
    [VisitRuleTypeID] int  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL
);
GO

-- Creating table 'VisitRulesType1'
CREATE TABLE [dbo].[VisitRulesType1] (
    [VisitRuleID] int  NOT NULL,
    [VisitRuleDelayDays] int  NOT NULL
);
GO

-- Creating table 'VisitRulesType2'
CREATE TABLE [dbo].[VisitRulesType2] (
    [VisitRuleID] int  NOT NULL,
    [VisitRuleDate] datetime  NOT NULL,
    [VisitRuleFinishDate] datetime  NOT NULL
);
GO

-- Creating table 'Visits'
CREATE TABLE [dbo].[Visits] (
    [VisitGUID] uniqueidentifier  NOT NULL,
    [UserLoginName] nvarchar(64)  NOT NULL,
    [ClientOfficeID] int  NOT NULL,
    [UserSubroleID] int  NULL,
    [SupervisorUserLoginName] nvarchar(64)  NULL,
    [VisitDate] datetime  NOT NULL,
    [ModifiedBy] nvarchar(64)  NULL,
    [ModifiedWhen] datetime  NULL,
    [VisitMadeBySupervisor] bit  NOT NULL,
    [VisitStartedWhen] datetime  NULL,
    [VisitFinishedWhen] datetime  NULL,
    [CreatedInWeb] bit  NOT NULL,
    [InRoute] bit  NULL
);
GO

-- Creating table 'AdvCampaignMaterialMappings'
CREATE TABLE [dbo].[AdvCampaignMaterialMappings] (
    [AdvCampaignMaterials_AdvCampaignMaterialID] int  NOT NULL,
    [AdvCampaigns_AdvCampaignID] int  NOT NULL
);
GO

-- Creating table 'Category1BrandMappings'
CREATE TABLE [dbo].[Category1BrandMappings] (
    [Brands_BrandID] int  NOT NULL,
    [Categories1_Category1ID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AdvCampaignMaterialID] in table 'AdvCampaignMaterials'
ALTER TABLE [dbo].[AdvCampaignMaterials]
ADD CONSTRAINT [PK_AdvCampaignMaterials]
    PRIMARY KEY CLUSTERED ([AdvCampaignMaterialID] ASC);
GO

-- Creating primary key on [AdvCampaignReportItemGUID], [AdvCampaignMaterialID] in table 'AdvCampaignReportItemMaterials'
ALTER TABLE [dbo].[AdvCampaignReportItemMaterials]
ADD CONSTRAINT [PK_AdvCampaignReportItemMaterials]
    PRIMARY KEY CLUSTERED ([AdvCampaignReportItemGUID], [AdvCampaignMaterialID] ASC);
GO

-- Creating primary key on [AdvCampaignReportItemGUID] in table 'AdvCampaignReportItems'
ALTER TABLE [dbo].[AdvCampaignReportItems]
ADD CONSTRAINT [PK_AdvCampaignReportItems]
    PRIMARY KEY CLUSTERED ([AdvCampaignReportItemGUID] ASC);
GO

-- Creating primary key on [AdvCampaignID] in table 'AdvCampaigns'
ALTER TABLE [dbo].[AdvCampaigns]
ADD CONSTRAINT [PK_AdvCampaigns]
    PRIMARY KEY CLUSTERED ([AdvCampaignID] ASC);
GO

-- Creating primary key on [AdvertisingID] in table 'Advertisings'
ALTER TABLE [dbo].[Advertisings]
ADD CONSTRAINT [PK_Advertisings]
    PRIMARY KEY CLUSTERED ([AdvertisingID] ASC);
GO

-- Creating primary key on [AdvertisingReportItemGUID] in table 'AdvertisingReportItems'
ALTER TABLE [dbo].[AdvertisingReportItems]
ADD CONSTRAINT [PK_AdvertisingReportItems]
    PRIMARY KEY CLUSTERED ([AdvertisingReportItemGUID] ASC);
GO

-- Creating primary key on [BenchCategory1ID] in table 'BenchCategories1'
ALTER TABLE [dbo].[BenchCategories1]
ADD CONSTRAINT [PK_BenchCategories1]
    PRIMARY KEY CLUSTERED ([BenchCategory1ID] ASC);
GO

-- Creating primary key on [BenchReportItemGUID] in table 'BenchReportItems'
ALTER TABLE [dbo].[BenchReportItems]
ADD CONSTRAINT [PK_BenchReportItems]
    PRIMARY KEY CLUSTERED ([BenchReportItemGUID] ASC);
GO

-- Creating primary key on [BenchReportItemTempStoreGUID] in table 'BenchReportItemsTempStores'
ALTER TABLE [dbo].[BenchReportItemsTempStores]
ADD CONSTRAINT [PK_BenchReportItemsTempStores]
    PRIMARY KEY CLUSTERED ([BenchReportItemTempStoreGUID] ASC);
GO

-- Creating primary key on [BenchSkuID] in table 'BenchSkus'
ALTER TABLE [dbo].[BenchSkus]
ADD CONSTRAINT [PK_BenchSkus]
    PRIMARY KEY CLUSTERED ([BenchSkuID] ASC);
GO

-- Creating primary key on [BrandID] in table 'Brands'
ALTER TABLE [dbo].[Brands]
ADD CONSTRAINT [PK_Brands]
    PRIMARY KEY CLUSTERED ([BrandID] ASC);
GO

-- Creating primary key on [Category1ID] in table 'Categories1'
ALTER TABLE [dbo].[Categories1]
ADD CONSTRAINT [PK_Categories1]
    PRIMARY KEY CLUSTERED ([Category1ID] ASC);
GO

-- Creating primary key on [Category2ID] in table 'Categories2'
ALTER TABLE [dbo].[Categories2]
ADD CONSTRAINT [PK_Categories2]
    PRIMARY KEY CLUSTERED ([Category2ID] ASC);
GO

-- Creating primary key on [Category3ID] in table 'Categories3'
ALTER TABLE [dbo].[Categories3]
ADD CONSTRAINT [PK_Categories3]
    PRIMARY KEY CLUSTERED ([Category3ID] ASC);
GO

-- Creating primary key on [Category4ID] in table 'Categories4'
ALTER TABLE [dbo].[Categories4]
ADD CONSTRAINT [PK_Categories4]
    PRIMARY KEY CLUSTERED ([Category4ID] ASC);
GO

-- Creating primary key on [Category1ID], [UserSubroleID] in table 'Category1UserSubroleMappings'
ALTER TABLE [dbo].[Category1UserSubroleMappings]
ADD CONSTRAINT [PK_Category1UserSubroleMappings]
    PRIMARY KEY CLUSTERED ([Category1ID], [UserSubroleID] ASC);
GO

-- Creating primary key on [CityID] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([CityID] ASC);
GO

-- Creating primary key on [ClientOfficeID] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [PK_ClientOffices]
    PRIMARY KEY CLUSTERED ([ClientOfficeID] ASC);
GO

-- Creating primary key on [ClientID] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [PK_Clients]
    PRIMARY KEY CLUSTERED ([ClientID] ASC);
GO

-- Creating primary key on [CompetitorAdvertisingGeneration], [CompetitorAdvertisingNum] in table 'CompetitorAdvertisings'
ALTER TABLE [dbo].[CompetitorAdvertisings]
ADD CONSTRAINT [PK_CompetitorAdvertisings]
    PRIMARY KEY CLUSTERED ([CompetitorAdvertisingGeneration], [CompetitorAdvertisingNum] ASC);
GO

-- Creating primary key on [CompetitorReportItemGUID] in table 'CompetitorReportItems'
ALTER TABLE [dbo].[CompetitorReportItems]
ADD CONSTRAINT [PK_CompetitorReportItems]
    PRIMARY KEY CLUSTERED ([CompetitorReportItemGUID] ASC);
GO

-- Creating primary key on [ReportGUID] in table 'CompetitorReports'
ALTER TABLE [dbo].[CompetitorReports]
ADD CONSTRAINT [PK_CompetitorReports]
    PRIMARY KEY CLUSTERED ([ReportGUID] ASC);
GO

-- Creating primary key on [MappingID] in table 'ListingClientOfficeMappings'
ALTER TABLE [dbo].[ListingClientOfficeMappings]
ADD CONSTRAINT [PK_ListingClientOfficeMappings]
    PRIMARY KEY CLUSTERED ([MappingID] ASC);
GO

-- Creating primary key on [ListingID] in table 'Listings'
ALTER TABLE [dbo].[Listings]
ADD CONSTRAINT [PK_Listings]
    PRIMARY KEY CLUSTERED ([ListingID] ASC);
GO

-- Creating primary key on [MappingID] in table 'ListingSKUMappings'
ALTER TABLE [dbo].[ListingSKUMappings]
ADD CONSTRAINT [PK_ListingSKUMappings]
    PRIMARY KEY CLUSTERED ([MappingID] ASC);
GO

-- Creating primary key on [ReportGUID] in table 'MerchantReportCopieds'
ALTER TABLE [dbo].[MerchantReportCopieds]
ADD CONSTRAINT [PK_MerchantReportCopieds]
    PRIMARY KEY CLUSTERED ([ReportGUID] ASC);
GO

-- Creating primary key on [MerchantReportItemGUID] in table 'MerchantReportItems'
ALTER TABLE [dbo].[MerchantReportItems]
ADD CONSTRAINT [PK_MerchantReportItems]
    PRIMARY KEY CLUSTERED ([MerchantReportItemGUID] ASC);
GO

-- Creating primary key on [MerchantReportItemTempStoreGUID] in table 'MerchantReportItemsTempStores'
ALTER TABLE [dbo].[MerchantReportItemsTempStores]
ADD CONSTRAINT [PK_MerchantReportItemsTempStores]
    PRIMARY KEY CLUSTERED ([MerchantReportItemTempStoreGUID] ASC);
GO

-- Creating primary key on [PhotoReportItemGUID] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [PK_PhotoReportItems]
    PRIMARY KEY CLUSTERED ([PhotoReportItemGUID] ASC);
GO

-- Creating primary key on [PhotoReportTagID] in table 'PhotoReportTags'
ALTER TABLE [dbo].[PhotoReportTags]
ADD CONSTRAINT [PK_PhotoReportTags]
    PRIMARY KEY CLUSTERED ([PhotoReportTagID] ASC);
GO

-- Creating primary key on [PortionReportItemGUID] in table 'PortionReportItems'
ALTER TABLE [dbo].[PortionReportItems]
ADD CONSTRAINT [PK_PortionReportItems]
    PRIMARY KEY CLUSTERED ([PortionReportItemGUID] ASC);
GO

-- Creating primary key on [PortionReportItemTempStoreGUID] in table 'PortionReportItemsTempStores'
ALTER TABLE [dbo].[PortionReportItemsTempStores]
ADD CONSTRAINT [PK_PortionReportItemsTempStores]
    PRIMARY KEY CLUSTERED ([PortionReportItemTempStoreGUID] ASC);
GO

-- Creating primary key on [ReportGUID] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [PK_Reports]
    PRIMARY KEY CLUSTERED ([ReportGUID] ASC);
GO

-- Creating primary key on [ReportTypeID] in table 'ReportTypes'
ALTER TABLE [dbo].[ReportTypes]
ADD CONSTRAINT [PK_ReportTypes]
    PRIMARY KEY CLUSTERED ([ReportTypeID] ASC);
GO

-- Creating primary key on [RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID], [WeekdayDate] in table 'RouteClientOfficeExceptions'
ALTER TABLE [dbo].[RouteClientOfficeExceptions]
ADD CONSTRAINT [PK_RouteClientOfficeExceptions]
    PRIMARY KEY CLUSTERED ([RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID], [WeekdayDate] ASC);
GO

-- Creating primary key on [RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID] in table 'RouteClientOffices'
ALTER TABLE [dbo].[RouteClientOffices]
ADD CONSTRAINT [PK_RouteClientOffices]
    PRIMARY KEY CLUSTERED ([RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID] ASC);
GO

-- Creating primary key on [RouteID], [ClientOfficeID], [UserLoginName] in table 'RouteClientOfficesDistincts'
ALTER TABLE [dbo].[RouteClientOfficesDistincts]
ADD CONSTRAINT [PK_RouteClientOfficesDistincts]
    PRIMARY KEY CLUSTERED ([RouteID], [ClientOfficeID], [UserLoginName] ASC);
GO

-- Creating primary key on [RouteID] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [PK_Routes]
    PRIMARY KEY CLUSTERED ([RouteID] ASC);
GO

-- Creating primary key on [SellOutReportItemGUID] in table 'SellOutReportItems'
ALTER TABLE [dbo].[SellOutReportItems]
ADD CONSTRAINT [PK_SellOutReportItems]
    PRIMARY KEY CLUSTERED ([SellOutReportItemGUID] ASC);
GO

-- Creating primary key on [SellOutReportItemTypeID] in table 'SellOutReportItemTypes'
ALTER TABLE [dbo].[SellOutReportItemTypes]
ADD CONSTRAINT [PK_SellOutReportItemTypes]
    PRIMARY KEY CLUSTERED ([SellOutReportItemTypeID] ASC);
GO

-- Creating primary key on [SkuID] in table 'SkuAvgPrices'
ALTER TABLE [dbo].[SkuAvgPrices]
ADD CONSTRAINT [PK_SkuAvgPrices]
    PRIMARY KEY CLUSTERED ([SkuID] ASC);
GO

-- Creating primary key on [SkuID], [ClientClassificationID], [ClientID] in table 'SkuExclusiveMappings'
ALTER TABLE [dbo].[SkuExclusiveMappings]
ADD CONSTRAINT [PK_SkuExclusiveMappings]
    PRIMARY KEY CLUSTERED ([SkuID], [ClientClassificationID], [ClientID] ASC);
GO

-- Creating primary key on [SkuID] in table 'Skus'
ALTER TABLE [dbo].[Skus]
ADD CONSTRAINT [PK_Skus]
    PRIMARY KEY CLUSTERED ([SkuID] ASC);
GO

-- Creating primary key on [TrainingReportItemGUID], [TrainingReportItemParticipantGUID] in table 'TrainingReportItemParticipants'
ALTER TABLE [dbo].[TrainingReportItemParticipants]
ADD CONSTRAINT [PK_TrainingReportItemParticipants]
    PRIMARY KEY CLUSTERED ([TrainingReportItemGUID], [TrainingReportItemParticipantGUID] ASC);
GO

-- Creating primary key on [TrainingReportItemGUID] in table 'TrainingReportItems'
ALTER TABLE [dbo].[TrainingReportItems]
ADD CONSTRAINT [PK_TrainingReportItems]
    PRIMARY KEY CLUSTERED ([TrainingReportItemGUID] ASC);
GO

-- Creating primary key on [TrainingID] in table 'Trainings'
ALTER TABLE [dbo].[Trainings]
ADD CONSTRAINT [PK_Trainings]
    PRIMARY KEY CLUSTERED ([TrainingID] ASC);
GO

-- Creating primary key on [UserLoginName] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserLoginName] ASC);
GO

-- Creating primary key on [VisitRuleID] in table 'VisitRules'
ALTER TABLE [dbo].[VisitRules]
ADD CONSTRAINT [PK_VisitRules]
    PRIMARY KEY CLUSTERED ([VisitRuleID] ASC);
GO

-- Creating primary key on [VisitRuleID] in table 'VisitRulesType1'
ALTER TABLE [dbo].[VisitRulesType1]
ADD CONSTRAINT [PK_VisitRulesType1]
    PRIMARY KEY CLUSTERED ([VisitRuleID] ASC);
GO

-- Creating primary key on [VisitRuleID], [VisitRuleDate] in table 'VisitRulesType2'
ALTER TABLE [dbo].[VisitRulesType2]
ADD CONSTRAINT [PK_VisitRulesType2]
    PRIMARY KEY CLUSTERED ([VisitRuleID], [VisitRuleDate] ASC);
GO

-- Creating primary key on [VisitGUID] in table 'Visits'
ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT [PK_Visits]
    PRIMARY KEY CLUSTERED ([VisitGUID] ASC);
GO

-- Creating primary key on [AdvCampaignMaterials_AdvCampaignMaterialID], [AdvCampaigns_AdvCampaignID] in table 'AdvCampaignMaterialMappings'
ALTER TABLE [dbo].[AdvCampaignMaterialMappings]
ADD CONSTRAINT [PK_AdvCampaignMaterialMappings]
    PRIMARY KEY CLUSTERED ([AdvCampaignMaterials_AdvCampaignMaterialID], [AdvCampaigns_AdvCampaignID] ASC);
GO

-- Creating primary key on [Brands_BrandID], [Categories1_Category1ID] in table 'Category1BrandMappings'
ALTER TABLE [dbo].[Category1BrandMappings]
ADD CONSTRAINT [PK_Category1BrandMappings]
    PRIMARY KEY CLUSTERED ([Brands_BrandID], [Categories1_Category1ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AdvCampaignMaterialID] in table 'AdvCampaignReportItemMaterials'
ALTER TABLE [dbo].[AdvCampaignReportItemMaterials]
ADD CONSTRAINT [FK_AdvCampaignReportItemMaterials_AdvCampaignMaterials]
    FOREIGN KEY ([AdvCampaignMaterialID])
    REFERENCES [dbo].[AdvCampaignMaterials]
        ([AdvCampaignMaterialID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignReportItemMaterials_AdvCampaignMaterials'
CREATE INDEX [IX_FK_AdvCampaignReportItemMaterials_AdvCampaignMaterials]
ON [dbo].[AdvCampaignReportItemMaterials]
    ([AdvCampaignMaterialID]);
GO

-- Creating foreign key on [AdvCampaignReportItemGUID] in table 'AdvCampaignReportItemMaterials'
ALTER TABLE [dbo].[AdvCampaignReportItemMaterials]
ADD CONSTRAINT [FK_AdvCampaignReportItemMaterials_AdvCampaignReportItems]
    FOREIGN KEY ([AdvCampaignReportItemGUID])
    REFERENCES [dbo].[AdvCampaignReportItems]
        ([AdvCampaignReportItemGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AdvCampaignReportItemMaterialOwner] in table 'AdvCampaignReportItemMaterials'
ALTER TABLE [dbo].[AdvCampaignReportItemMaterials]
ADD CONSTRAINT [FK_AdvCampaignReportItemMaterials_Users]
    FOREIGN KEY ([AdvCampaignReportItemMaterialOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignReportItemMaterials_Users'
CREATE INDEX [IX_FK_AdvCampaignReportItemMaterials_Users]
ON [dbo].[AdvCampaignReportItemMaterials]
    ([AdvCampaignReportItemMaterialOwner]);
GO

-- Creating foreign key on [AdvCampaignID] in table 'AdvCampaignReportItems'
ALTER TABLE [dbo].[AdvCampaignReportItems]
ADD CONSTRAINT [FK_AdvCampaignReportItems_AdvCampaigns]
    FOREIGN KEY ([AdvCampaignID])
    REFERENCES [dbo].[AdvCampaigns]
        ([AdvCampaignID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignReportItems_AdvCampaigns'
CREATE INDEX [IX_FK_AdvCampaignReportItems_AdvCampaigns]
ON [dbo].[AdvCampaignReportItems]
    ([AdvCampaignID]);
GO

-- Creating foreign key on [ReportGUID] in table 'AdvCampaignReportItems'
ALTER TABLE [dbo].[AdvCampaignReportItems]
ADD CONSTRAINT [FK_AdvCampaignReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignReportItems_Reports'
CREATE INDEX [IX_FK_AdvCampaignReportItems_Reports]
ON [dbo].[AdvCampaignReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [AdvCampaignReportItemOwner] in table 'AdvCampaignReportItems'
ALTER TABLE [dbo].[AdvCampaignReportItems]
ADD CONSTRAINT [FK_AdvCampaignReportItems_Users]
    FOREIGN KEY ([AdvCampaignReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignReportItems_Users'
CREATE INDEX [IX_FK_AdvCampaignReportItems_Users]
ON [dbo].[AdvCampaignReportItems]
    ([AdvCampaignReportItemOwner]);
GO

-- Creating foreign key on [AdvertisingID] in table 'AdvertisingReportItems'
ALTER TABLE [dbo].[AdvertisingReportItems]
ADD CONSTRAINT [FK_AdvertisingReportItems_Advertising]
    FOREIGN KEY ([AdvertisingID])
    REFERENCES [dbo].[Advertisings]
        ([AdvertisingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvertisingReportItems_Advertising'
CREATE INDEX [IX_FK_AdvertisingReportItems_Advertising]
ON [dbo].[AdvertisingReportItems]
    ([AdvertisingID]);
GO

-- Creating foreign key on [ReportGUID] in table 'AdvertisingReportItems'
ALTER TABLE [dbo].[AdvertisingReportItems]
ADD CONSTRAINT [FK_AdvertisingReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvertisingReportItems_Reports'
CREATE INDEX [IX_FK_AdvertisingReportItems_Reports]
ON [dbo].[AdvertisingReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [AdvertisingReportItemOwner] in table 'AdvertisingReportItems'
ALTER TABLE [dbo].[AdvertisingReportItems]
ADD CONSTRAINT [FK_AdvertisingReportItems_Users]
    FOREIGN KEY ([AdvertisingReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvertisingReportItems_Users'
CREATE INDEX [IX_FK_AdvertisingReportItems_Users]
ON [dbo].[AdvertisingReportItems]
    ([AdvertisingReportItemOwner]);
GO

-- Creating foreign key on [BenchCategory1ID] in table 'BenchSkus'
ALTER TABLE [dbo].[BenchSkus]
ADD CONSTRAINT [FK_BenchSkus_BenchCategories1]
    FOREIGN KEY ([BenchCategory1ID])
    REFERENCES [dbo].[BenchCategories1]
        ([BenchCategory1ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchSkus_BenchCategories1'
CREATE INDEX [IX_FK_BenchSkus_BenchCategories1]
ON [dbo].[BenchSkus]
    ([BenchCategory1ID]);
GO

-- Creating foreign key on [BenchSkuID] in table 'BenchReportItems'
ALTER TABLE [dbo].[BenchReportItems]
ADD CONSTRAINT [FK_BenchReportItems_BenchSkus]
    FOREIGN KEY ([BenchSkuID])
    REFERENCES [dbo].[BenchSkus]
        ([BenchSkuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchReportItems_BenchSkus'
CREATE INDEX [IX_FK_BenchReportItems_BenchSkus]
ON [dbo].[BenchReportItems]
    ([BenchSkuID]);
GO

-- Creating foreign key on [ReportGUID] in table 'BenchReportItems'
ALTER TABLE [dbo].[BenchReportItems]
ADD CONSTRAINT [FK_BenchReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchReportItems_Reports'
CREATE INDEX [IX_FK_BenchReportItems_Reports]
ON [dbo].[BenchReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [BenchReportItemOwner] in table 'BenchReportItems'
ALTER TABLE [dbo].[BenchReportItems]
ADD CONSTRAINT [FK_BenchReportItems_Users]
    FOREIGN KEY ([BenchReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchReportItems_Users'
CREATE INDEX [IX_FK_BenchReportItems_Users]
ON [dbo].[BenchReportItems]
    ([BenchReportItemOwner]);
GO

-- Creating foreign key on [BenchSkuID] in table 'BenchReportItemsTempStores'
ALTER TABLE [dbo].[BenchReportItemsTempStores]
ADD CONSTRAINT [FK_BenchReportItemsTempStore_BenchSkus]
    FOREIGN KEY ([BenchSkuID])
    REFERENCES [dbo].[BenchSkus]
        ([BenchSkuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchReportItemsTempStore_BenchSkus'
CREATE INDEX [IX_FK_BenchReportItemsTempStore_BenchSkus]
ON [dbo].[BenchReportItemsTempStores]
    ([BenchSkuID]);
GO

-- Creating foreign key on [BrandID] in table 'BenchSkus'
ALTER TABLE [dbo].[BenchSkus]
ADD CONSTRAINT [FK_BenchSkus_Brands]
    FOREIGN KEY ([BrandID])
    REFERENCES [dbo].[Brands]
        ([BrandID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BenchSkus_Brands'
CREATE INDEX [IX_FK_BenchSkus_Brands]
ON [dbo].[BenchSkus]
    ([BrandID]);
GO

-- Creating foreign key on [BrandID] in table 'CompetitorReportItems'
ALTER TABLE [dbo].[CompetitorReportItems]
ADD CONSTRAINT [FK_CompetitorReportItems_Brands]
    FOREIGN KEY ([BrandID])
    REFERENCES [dbo].[Brands]
        ([BrandID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompetitorReportItems_Brands'
CREATE INDEX [IX_FK_CompetitorReportItems_Brands]
ON [dbo].[CompetitorReportItems]
    ([BrandID]);
GO

-- Creating foreign key on [BrandID] in table 'PortionReportItems'
ALTER TABLE [dbo].[PortionReportItems]
ADD CONSTRAINT [FK_PortionReportItems_Brands]
    FOREIGN KEY ([BrandID])
    REFERENCES [dbo].[Brands]
        ([BrandID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItems_Brands'
CREATE INDEX [IX_FK_PortionReportItems_Brands]
ON [dbo].[PortionReportItems]
    ([BrandID]);
GO

-- Creating foreign key on [BrandID] in table 'PortionReportItemsTempStores'
ALTER TABLE [dbo].[PortionReportItemsTempStores]
ADD CONSTRAINT [FK_PortionReportItemsTempStore_Brands]
    FOREIGN KEY ([BrandID])
    REFERENCES [dbo].[Brands]
        ([BrandID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItemsTempStore_Brands'
CREATE INDEX [IX_FK_PortionReportItemsTempStore_Brands]
ON [dbo].[PortionReportItemsTempStores]
    ([BrandID]);
GO

-- Creating foreign key on [Category1ID] in table 'Categories2'
ALTER TABLE [dbo].[Categories2]
ADD CONSTRAINT [FK_Categories2_Categories1]
    FOREIGN KEY ([Category1ID])
    REFERENCES [dbo].[Categories1]
        ([Category1ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Categories2_Categories1'
CREATE INDEX [IX_FK_Categories2_Categories1]
ON [dbo].[Categories2]
    ([Category1ID]);
GO

-- Creating foreign key on [Category1ID] in table 'Category1UserSubroleMappings'
ALTER TABLE [dbo].[Category1UserSubroleMappings]
ADD CONSTRAINT [FK_Category1UserSubroleMappings_Categories1]
    FOREIGN KEY ([Category1ID])
    REFERENCES [dbo].[Categories1]
        ([Category1ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Category2ID] in table 'Categories3'
ALTER TABLE [dbo].[Categories3]
ADD CONSTRAINT [FK_Categories3_Categories2]
    FOREIGN KEY ([Category2ID])
    REFERENCES [dbo].[Categories2]
        ([Category2ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Categories3_Categories2'
CREATE INDEX [IX_FK_Categories3_Categories2]
ON [dbo].[Categories3]
    ([Category2ID]);
GO

-- Creating foreign key on [Category3ID] in table 'Categories4'
ALTER TABLE [dbo].[Categories4]
ADD CONSTRAINT [FK_Categories4_Categories3]
    FOREIGN KEY ([Category3ID])
    REFERENCES [dbo].[Categories3]
        ([Category3ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Categories4_Categories3'
CREATE INDEX [IX_FK_Categories4_Categories3]
ON [dbo].[Categories4]
    ([Category3ID]);
GO

-- Creating foreign key on [Category3ID] in table 'CompetitorReportItems'
ALTER TABLE [dbo].[CompetitorReportItems]
ADD CONSTRAINT [FK_CompetitorReportItems_Categories3]
    FOREIGN KEY ([Category3ID])
    REFERENCES [dbo].[Categories3]
        ([Category3ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompetitorReportItems_Categories3'
CREATE INDEX [IX_FK_CompetitorReportItems_Categories3]
ON [dbo].[CompetitorReportItems]
    ([Category3ID]);
GO

-- Creating foreign key on [Category3ID] in table 'PortionReportItems'
ALTER TABLE [dbo].[PortionReportItems]
ADD CONSTRAINT [FK_PortionReportItems_Categories3]
    FOREIGN KEY ([Category3ID])
    REFERENCES [dbo].[Categories3]
        ([Category3ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItems_Categories3'
CREATE INDEX [IX_FK_PortionReportItems_Categories3]
ON [dbo].[PortionReportItems]
    ([Category3ID]);
GO

-- Creating foreign key on [Category3ID] in table 'PortionReportItemsTempStores'
ALTER TABLE [dbo].[PortionReportItemsTempStores]
ADD CONSTRAINT [FK_PortionReportItemsTempStore_Categories3]
    FOREIGN KEY ([Category3ID])
    REFERENCES [dbo].[Categories3]
        ([Category3ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItemsTempStore_Categories3'
CREATE INDEX [IX_FK_PortionReportItemsTempStore_Categories3]
ON [dbo].[PortionReportItemsTempStores]
    ([Category3ID]);
GO

-- Creating foreign key on [Category4ID] in table 'Skus'
ALTER TABLE [dbo].[Skus]
ADD CONSTRAINT [FK_Skus_Categories4]
    FOREIGN KEY ([Category4ID])
    REFERENCES [dbo].[Categories4]
        ([Category4ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Skus_Categories4'
CREATE INDEX [IX_FK_Skus_Categories4]
ON [dbo].[Skus]
    ([Category4ID]);
GO

-- Creating foreign key on [CityID] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Cities]
    FOREIGN KEY ([CityID])
    REFERENCES [dbo].[Cities]
        ([CityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Cities'
CREATE INDEX [IX_FK_ClientOffices_Cities]
ON [dbo].[ClientOffices]
    ([CityID]);
GO

-- Creating foreign key on [CityID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Cities]
    FOREIGN KEY ([CityID])
    REFERENCES [dbo].[Cities]
        ([CityID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Cities'
CREATE INDEX [IX_FK_Users_Cities]
ON [dbo].[Users]
    ([CityID]);
GO

-- Creating foreign key on [ClientID] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Clients]
    FOREIGN KEY ([ClientID])
    REFERENCES [dbo].[Clients]
        ([ClientID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Clients'
CREATE INDEX [IX_FK_ClientOffices_Clients]
ON [dbo].[ClientOffices]
    ([ClientID]);
GO

-- Creating foreign key on [AnalystUserLoginName1] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Analyst1]
    FOREIGN KEY ([AnalystUserLoginName1])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Analyst1'
CREATE INDEX [IX_FK_ClientOffices_Users_Analyst1]
ON [dbo].[ClientOffices]
    ([AnalystUserLoginName1]);
GO

-- Creating foreign key on [AnalystUserLoginName2] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Analyst2]
    FOREIGN KEY ([AnalystUserLoginName2])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Analyst2'
CREATE INDEX [IX_FK_ClientOffices_Users_Analyst2]
ON [dbo].[ClientOffices]
    ([AnalystUserLoginName2]);
GO

-- Creating foreign key on [AnalystUserLoginName3] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Analyst3]
    FOREIGN KEY ([AnalystUserLoginName3])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Analyst3'
CREATE INDEX [IX_FK_ClientOffices_Users_Analyst3]
ON [dbo].[ClientOffices]
    ([AnalystUserLoginName3]);
GO

-- Creating foreign key on [AnalystUserLoginName4] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Analyst4]
    FOREIGN KEY ([AnalystUserLoginName4])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Analyst4'
CREATE INDEX [IX_FK_ClientOffices_Users_Analyst4]
ON [dbo].[ClientOffices]
    ([AnalystUserLoginName4]);
GO

-- Creating foreign key on [AnalystUserLoginName5] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Analyst5]
    FOREIGN KEY ([AnalystUserLoginName5])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Analyst5'
CREATE INDEX [IX_FK_ClientOffices_Users_Analyst5]
ON [dbo].[ClientOffices]
    ([AnalystUserLoginName5]);
GO

-- Creating foreign key on [MerchSupervisorUserLoginName1] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor]
    FOREIGN KEY ([MerchSupervisorUserLoginName1])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_MerchSupervisor'
CREATE INDEX [IX_FK_ClientOffices_Users_MerchSupervisor]
ON [dbo].[ClientOffices]
    ([MerchSupervisorUserLoginName1]);
GO

-- Creating foreign key on [MerchSupervisorUserLoginName2] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor2]
    FOREIGN KEY ([MerchSupervisorUserLoginName2])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_MerchSupervisor2'
CREATE INDEX [IX_FK_ClientOffices_Users_MerchSupervisor2]
ON [dbo].[ClientOffices]
    ([MerchSupervisorUserLoginName2]);
GO

-- Creating foreign key on [MerchSupervisorUserLoginName3] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor3]
    FOREIGN KEY ([MerchSupervisorUserLoginName3])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_MerchSupervisor3'
CREATE INDEX [IX_FK_ClientOffices_Users_MerchSupervisor3]
ON [dbo].[ClientOffices]
    ([MerchSupervisorUserLoginName3]);
GO

-- Creating foreign key on [MerchSupervisorUserLoginName4] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor4]
    FOREIGN KEY ([MerchSupervisorUserLoginName4])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_MerchSupervisor4'
CREATE INDEX [IX_FK_ClientOffices_Users_MerchSupervisor4]
ON [dbo].[ClientOffices]
    ([MerchSupervisorUserLoginName4]);
GO

-- Creating foreign key on [MerchSupervisorUserLoginName5] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_MerchSupervisor5]
    FOREIGN KEY ([MerchSupervisorUserLoginName5])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_MerchSupervisor5'
CREATE INDEX [IX_FK_ClientOffices_Users_MerchSupervisor5]
ON [dbo].[ClientOffices]
    ([MerchSupervisorUserLoginName5]);
GO

-- Creating foreign key on [SupervisorUserLoginName] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Supervisor]
    FOREIGN KEY ([SupervisorUserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Supervisor'
CREATE INDEX [IX_FK_ClientOffices_Users_Supervisor]
ON [dbo].[ClientOffices]
    ([SupervisorUserLoginName]);
GO

-- Creating foreign key on [SupervisorUserLoginName2] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Supervisor2]
    FOREIGN KEY ([SupervisorUserLoginName2])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Supervisor2'
CREATE INDEX [IX_FK_ClientOffices_Users_Supervisor2]
ON [dbo].[ClientOffices]
    ([SupervisorUserLoginName2]);
GO

-- Creating foreign key on [SupervisorUserLoginName3] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Supervisor3]
    FOREIGN KEY ([SupervisorUserLoginName3])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Supervisor3'
CREATE INDEX [IX_FK_ClientOffices_Users_Supervisor3]
ON [dbo].[ClientOffices]
    ([SupervisorUserLoginName3]);
GO

-- Creating foreign key on [SupervisorUserLoginName4] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Supervisor4]
    FOREIGN KEY ([SupervisorUserLoginName4])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Supervisor4'
CREATE INDEX [IX_FK_ClientOffices_Users_Supervisor4]
ON [dbo].[ClientOffices]
    ([SupervisorUserLoginName4]);
GO

-- Creating foreign key on [SupervisorUserLoginName5] in table 'ClientOffices'
ALTER TABLE [dbo].[ClientOffices]
ADD CONSTRAINT [FK_ClientOffices_Users_Supervisor5]
    FOREIGN KEY ([SupervisorUserLoginName5])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOffices_Users_Supervisor5'
CREATE INDEX [IX_FK_ClientOffices_Users_Supervisor5]
ON [dbo].[ClientOffices]
    ([SupervisorUserLoginName5]);
GO

-- Creating foreign key on [ClientOfficeID] in table 'ListingClientOfficeMappings'
ALTER TABLE [dbo].[ListingClientOfficeMappings]
ADD CONSTRAINT [FK_ListingClientOfficeMappings_ClientOffices]
    FOREIGN KEY ([ClientOfficeID])
    REFERENCES [dbo].[ClientOffices]
        ([ClientOfficeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ListingClientOfficeMappings_ClientOffices'
CREATE INDEX [IX_FK_ListingClientOfficeMappings_ClientOffices]
ON [dbo].[ListingClientOfficeMappings]
    ([ClientOfficeID]);
GO

-- Creating foreign key on [ClientOfficeID] in table 'RouteClientOffices'
ALTER TABLE [dbo].[RouteClientOffices]
ADD CONSTRAINT [FK_RouteClientOffices_ClientOffices]
    FOREIGN KEY ([ClientOfficeID])
    REFERENCES [dbo].[ClientOffices]
        ([ClientOfficeID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteClientOffices_ClientOffices'
CREATE INDEX [IX_FK_RouteClientOffices_ClientOffices]
ON [dbo].[RouteClientOffices]
    ([ClientOfficeID]);
GO

-- Creating foreign key on [ClientOfficeID] in table 'RouteClientOfficesDistincts'
ALTER TABLE [dbo].[RouteClientOfficesDistincts]
ADD CONSTRAINT [FK_RouteClientOfficesDistincts_ClientOffices]
    FOREIGN KEY ([ClientOfficeID])
    REFERENCES [dbo].[ClientOffices]
        ([ClientOfficeID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteClientOfficesDistincts_ClientOffices'
CREATE INDEX [IX_FK_RouteClientOfficesDistincts_ClientOffices]
ON [dbo].[RouteClientOfficesDistincts]
    ([ClientOfficeID]);
GO

-- Creating foreign key on [ClientOfficeID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_ClientOffices]
    FOREIGN KEY ([ClientOfficeID])
    REFERENCES [dbo].[ClientOffices]
        ([ClientOfficeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_ClientOffices'
CREATE INDEX [IX_FK_Users_ClientOffices]
ON [dbo].[Users]
    ([ClientOfficeID]);
GO

-- Creating foreign key on [ClientOfficeID] in table 'Visits'
ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT [FK_Visits_ClientOffices]
    FOREIGN KEY ([ClientOfficeID])
    REFERENCES [dbo].[ClientOffices]
        ([ClientOfficeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Visits_ClientOffices'
CREATE INDEX [IX_FK_Visits_ClientOffices]
ON [dbo].[Visits]
    ([ClientOfficeID]);
GO

-- Creating foreign key on [VisitRuleID] in table 'Clients'
ALTER TABLE [dbo].[Clients]
ADD CONSTRAINT [FK_Clients_VisitRules]
    FOREIGN KEY ([VisitRuleID])
    REFERENCES [dbo].[VisitRules]
        ([VisitRuleID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Clients_VisitRules'
CREATE INDEX [IX_FK_Clients_VisitRules]
ON [dbo].[Clients]
    ([VisitRuleID]);
GO

-- Creating foreign key on [ReportGUID] in table 'CompetitorReportItems'
ALTER TABLE [dbo].[CompetitorReportItems]
ADD CONSTRAINT [FK_CompetitorReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompetitorReportItems_Reports'
CREATE INDEX [IX_FK_CompetitorReportItems_Reports]
ON [dbo].[CompetitorReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [CompetitorReportItemOwner] in table 'CompetitorReportItems'
ALTER TABLE [dbo].[CompetitorReportItems]
ADD CONSTRAINT [FK_CompetitorReportItems_Users]
    FOREIGN KEY ([CompetitorReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompetitorReportItems_Users'
CREATE INDEX [IX_FK_CompetitorReportItems_Users]
ON [dbo].[CompetitorReportItems]
    ([CompetitorReportItemOwner]);
GO

-- Creating foreign key on [ReportGUID] in table 'CompetitorReports'
ALTER TABLE [dbo].[CompetitorReports]
ADD CONSTRAINT [FK_CompetitorReports_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [CompetitorReportOwner] in table 'CompetitorReports'
ALTER TABLE [dbo].[CompetitorReports]
ADD CONSTRAINT [FK_CompetitorReports_Users]
    FOREIGN KEY ([CompetitorReportOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CompetitorReports_Users'
CREATE INDEX [IX_FK_CompetitorReports_Users]
ON [dbo].[CompetitorReports]
    ([CompetitorReportOwner]);
GO

-- Creating foreign key on [ListingID] in table 'ListingClientOfficeMappings'
ALTER TABLE [dbo].[ListingClientOfficeMappings]
ADD CONSTRAINT [FK_ListingClientOfficeMappings_Listings]
    FOREIGN KEY ([ListingID])
    REFERENCES [dbo].[Listings]
        ([ListingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ListingClientOfficeMappings_Listings'
CREATE INDEX [IX_FK_ListingClientOfficeMappings_Listings]
ON [dbo].[ListingClientOfficeMappings]
    ([ListingID]);
GO

-- Creating foreign key on [ListingID] in table 'ListingSKUMappings'
ALTER TABLE [dbo].[ListingSKUMappings]
ADD CONSTRAINT [FK_ListingSKUMappings_Listings]
    FOREIGN KEY ([ListingID])
    REFERENCES [dbo].[Listings]
        ([ListingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ListingSKUMappings_Listings'
CREATE INDEX [IX_FK_ListingSKUMappings_Listings]
ON [dbo].[ListingSKUMappings]
    ([ListingID]);
GO

-- Creating foreign key on [SkuID] in table 'ListingSKUMappings'
ALTER TABLE [dbo].[ListingSKUMappings]
ADD CONSTRAINT [FK_ListingSKUMappings_Skus]
    FOREIGN KEY ([SkuID])
    REFERENCES [dbo].[Skus]
        ([SkuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ListingSKUMappings_Skus'
CREATE INDEX [IX_FK_ListingSKUMappings_Skus]
ON [dbo].[ListingSKUMappings]
    ([SkuID]);
GO

-- Creating foreign key on [FromReportGUID] in table 'MerchantReportCopieds'
ALTER TABLE [dbo].[MerchantReportCopieds]
ADD CONSTRAINT [FK_MerchantReportCopied_Reports_From]
    FOREIGN KEY ([FromReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantReportCopied_Reports_From'
CREATE INDEX [IX_FK_MerchantReportCopied_Reports_From]
ON [dbo].[MerchantReportCopieds]
    ([FromReportGUID]);
GO

-- Creating foreign key on [ReportGUID] in table 'MerchantReportItems'
ALTER TABLE [dbo].[MerchantReportItems]
ADD CONSTRAINT [FK_MerchantReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantReportItems_Reports'
CREATE INDEX [IX_FK_MerchantReportItems_Reports]
ON [dbo].[MerchantReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [SkuID] in table 'MerchantReportItems'
ALTER TABLE [dbo].[MerchantReportItems]
ADD CONSTRAINT [FK_MerchantReportItems_Skus]
    FOREIGN KEY ([SkuID])
    REFERENCES [dbo].[Skus]
        ([SkuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantReportItems_Skus'
CREATE INDEX [IX_FK_MerchantReportItems_Skus]
ON [dbo].[MerchantReportItems]
    ([SkuID]);
GO

-- Creating foreign key on [MerchantReportItemOwner] in table 'MerchantReportItems'
ALTER TABLE [dbo].[MerchantReportItems]
ADD CONSTRAINT [FK_MerchantReportItems_Users]
    FOREIGN KEY ([MerchantReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantReportItems_Users'
CREATE INDEX [IX_FK_MerchantReportItems_Users]
ON [dbo].[MerchantReportItems]
    ([MerchantReportItemOwner]);
GO

-- Creating foreign key on [SkuID] in table 'MerchantReportItemsTempStores'
ALTER TABLE [dbo].[MerchantReportItemsTempStores]
ADD CONSTRAINT [FK_MerchantReportItemsTempStore_Skus]
    FOREIGN KEY ([SkuID])
    REFERENCES [dbo].[Skus]
        ([SkuID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MerchantReportItemsTempStore_Skus'
CREATE INDEX [IX_FK_MerchantReportItemsTempStore_Skus]
ON [dbo].[MerchantReportItemsTempStores]
    ([SkuID]);
GO

-- Creating foreign key on [PhotoReportItemTagID1] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_1]
    FOREIGN KEY ([PhotoReportItemTagID1])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_1'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_1]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID1]);
GO

-- Creating foreign key on [PhotoReportItemTagID2] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_2]
    FOREIGN KEY ([PhotoReportItemTagID2])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_2'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_2]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID2]);
GO

-- Creating foreign key on [PhotoReportItemTagID3] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_3]
    FOREIGN KEY ([PhotoReportItemTagID3])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_3'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_3]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID3]);
GO

-- Creating foreign key on [PhotoReportItemTagID4] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_4]
    FOREIGN KEY ([PhotoReportItemTagID4])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_4'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_4]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID4]);
GO

-- Creating foreign key on [PhotoReportItemTagID5] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_5]
    FOREIGN KEY ([PhotoReportItemTagID5])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_5'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_5]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID5]);
GO

-- Creating foreign key on [PhotoReportItemTagID6] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_6]
    FOREIGN KEY ([PhotoReportItemTagID6])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_6'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_6]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID6]);
GO

-- Creating foreign key on [PhotoReportItemTagID7] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_7]
    FOREIGN KEY ([PhotoReportItemTagID7])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_7'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_7]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID7]);
GO

-- Creating foreign key on [PhotoReportItemTagID8] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_8]
    FOREIGN KEY ([PhotoReportItemTagID8])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_8'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_8]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID8]);
GO

-- Creating foreign key on [PhotoReportItemTagID9] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_PhotoReportTags_9]
    FOREIGN KEY ([PhotoReportItemTagID9])
    REFERENCES [dbo].[PhotoReportTags]
        ([PhotoReportTagID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_PhotoReportTags_9'
CREATE INDEX [IX_FK_PhotoReportItems_PhotoReportTags_9]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemTagID9]);
GO

-- Creating foreign key on [ReportGUID] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_Reports'
CREATE INDEX [IX_FK_PhotoReportItems_Reports]
ON [dbo].[PhotoReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [PhotoReportItemOwner] in table 'PhotoReportItems'
ALTER TABLE [dbo].[PhotoReportItems]
ADD CONSTRAINT [FK_PhotoReportItems_Users]
    FOREIGN KEY ([PhotoReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PhotoReportItems_Users'
CREATE INDEX [IX_FK_PhotoReportItems_Users]
ON [dbo].[PhotoReportItems]
    ([PhotoReportItemOwner]);
GO

-- Creating foreign key on [ReportGUID] in table 'PortionReportItems'
ALTER TABLE [dbo].[PortionReportItems]
ADD CONSTRAINT [FK_PortionReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItems_Reports'
CREATE INDEX [IX_FK_PortionReportItems_Reports]
ON [dbo].[PortionReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [PortionReportItemOwner] in table 'PortionReportItems'
ALTER TABLE [dbo].[PortionReportItems]
ADD CONSTRAINT [FK_PortionReportItems_Users]
    FOREIGN KEY ([PortionReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PortionReportItems_Users'
CREATE INDEX [IX_FK_PortionReportItems_Users]
ON [dbo].[PortionReportItems]
    ([PortionReportItemOwner]);
GO

-- Creating foreign key on [ReportType] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_Reports_ReportTypes]
    FOREIGN KEY ([ReportType])
    REFERENCES [dbo].[ReportTypes]
        ([ReportTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Reports_ReportTypes'
CREATE INDEX [IX_FK_Reports_ReportTypes]
ON [dbo].[Reports]
    ([ReportType]);
GO

-- Creating foreign key on [ReportOwner] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_Reports_Users]
    FOREIGN KEY ([ReportOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Reports_Users'
CREATE INDEX [IX_FK_Reports_Users]
ON [dbo].[Reports]
    ([ReportOwner]);
GO

-- Creating foreign key on [VisitGUID] in table 'Reports'
ALTER TABLE [dbo].[Reports]
ADD CONSTRAINT [FK_Reports_Visits]
    FOREIGN KEY ([VisitGUID])
    REFERENCES [dbo].[Visits]
        ([VisitGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Reports_Visits'
CREATE INDEX [IX_FK_Reports_Visits]
ON [dbo].[Reports]
    ([VisitGUID]);
GO

-- Creating foreign key on [ReportGUID] in table 'SellOutReportItems'
ALTER TABLE [dbo].[SellOutReportItems]
ADD CONSTRAINT [FK_SellOutReportItems_SellOutReports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellOutReportItems_SellOutReports'
CREATE INDEX [IX_FK_SellOutReportItems_SellOutReports]
ON [dbo].[SellOutReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [ReportGUID] in table 'TrainingReportItems'
ALTER TABLE [dbo].[TrainingReportItems]
ADD CONSTRAINT [FK_TrainingReportItems_Reports]
    FOREIGN KEY ([ReportGUID])
    REFERENCES [dbo].[Reports]
        ([ReportGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingReportItems_Reports'
CREATE INDEX [IX_FK_TrainingReportItems_Reports]
ON [dbo].[TrainingReportItems]
    ([ReportGUID]);
GO

-- Creating foreign key on [RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID] in table 'RouteClientOfficeExceptions'
ALTER TABLE [dbo].[RouteClientOfficeExceptions]
ADD CONSTRAINT [FK_RouteClientOfficeExceptions_RouteClientOffices]
    FOREIGN KEY ([RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID])
    REFERENCES [dbo].[RouteClientOffices]
        ([RouteID], [RouteClientOfficeWeekNumber], [RouteClientOfficeDayOfWeek], [ClientOfficeID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserLoginName] in table 'RouteClientOfficeExceptions'
ALTER TABLE [dbo].[RouteClientOfficeExceptions]
ADD CONSTRAINT [FK_RouteClientOfficeExceptions_Users]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteClientOfficeExceptions_Users'
CREATE INDEX [IX_FK_RouteClientOfficeExceptions_Users]
ON [dbo].[RouteClientOfficeExceptions]
    ([UserLoginName]);
GO

-- Creating foreign key on [RouteID] in table 'RouteClientOffices'
ALTER TABLE [dbo].[RouteClientOffices]
ADD CONSTRAINT [FK_RouteClientOffices_Routes]
    FOREIGN KEY ([RouteID])
    REFERENCES [dbo].[Routes]
        ([RouteID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserLoginName] in table 'RouteClientOffices'
ALTER TABLE [dbo].[RouteClientOffices]
ADD CONSTRAINT [FK_RouteClientOffices_Users]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteClientOffices_Users'
CREATE INDEX [IX_FK_RouteClientOffices_Users]
ON [dbo].[RouteClientOffices]
    ([UserLoginName]);
GO

-- Creating foreign key on [RouteID] in table 'RouteClientOfficesDistincts'
ALTER TABLE [dbo].[RouteClientOfficesDistincts]
ADD CONSTRAINT [FK_RouteClientOfficesDistincts_Routes]
    FOREIGN KEY ([RouteID])
    REFERENCES [dbo].[Routes]
        ([RouteID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserLoginName] in table 'RouteClientOfficesDistincts'
ALTER TABLE [dbo].[RouteClientOfficesDistincts]
ADD CONSTRAINT [FK_RouteClientOfficesDistincts_Users]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteClientOfficesDistincts_Users'
CREATE INDEX [IX_FK_RouteClientOfficesDistincts_Users]
ON [dbo].[RouteClientOfficesDistincts]
    ([UserLoginName]);
GO

-- Creating foreign key on [UserLoginName] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [FK_Routes_Users]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Routes_Users'
CREATE INDEX [IX_FK_Routes_Users]
ON [dbo].[Routes]
    ([UserLoginName]);
GO

-- Creating foreign key on [SellOutReportItemTypeID] in table 'SellOutReportItems'
ALTER TABLE [dbo].[SellOutReportItems]
ADD CONSTRAINT [FK_SellOutReportItems_SellOutReportItemTypes]
    FOREIGN KEY ([SellOutReportItemTypeID])
    REFERENCES [dbo].[SellOutReportItemTypes]
        ([SellOutReportItemTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellOutReportItems_SellOutReportItemTypes'
CREATE INDEX [IX_FK_SellOutReportItems_SellOutReportItemTypes]
ON [dbo].[SellOutReportItems]
    ([SellOutReportItemTypeID]);
GO

-- Creating foreign key on [SellOutReportItemOwner] in table 'SellOutReportItems'
ALTER TABLE [dbo].[SellOutReportItems]
ADD CONSTRAINT [FK_SellOutReportItems_Users]
    FOREIGN KEY ([SellOutReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SellOutReportItems_Users'
CREATE INDEX [IX_FK_SellOutReportItems_Users]
ON [dbo].[SellOutReportItems]
    ([SellOutReportItemOwner]);
GO

-- Creating foreign key on [SkuID] in table 'SkuAvgPrices'
ALTER TABLE [dbo].[SkuAvgPrices]
ADD CONSTRAINT [FK_SkuAvgPrices_Skus]
    FOREIGN KEY ([SkuID])
    REFERENCES [dbo].[Skus]
        ([SkuID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SkuID] in table 'SkuExclusiveMappings'
ALTER TABLE [dbo].[SkuExclusiveMappings]
ADD CONSTRAINT [FK_SkuExclusiveMappings_Skus]
    FOREIGN KEY ([SkuID])
    REFERENCES [dbo].[Skus]
        ([SkuID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TrainingReportItemGUID] in table 'TrainingReportItemParticipants'
ALTER TABLE [dbo].[TrainingReportItemParticipants]
ADD CONSTRAINT [FK_TrainingReportItemParticipants_TrainingReportItems]
    FOREIGN KEY ([TrainingReportItemGUID])
    REFERENCES [dbo].[TrainingReportItems]
        ([TrainingReportItemGUID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TrainingReportItemParticipantOwner] in table 'TrainingReportItemParticipants'
ALTER TABLE [dbo].[TrainingReportItemParticipants]
ADD CONSTRAINT [FK_TrainingReportItemParticipants_Users]
    FOREIGN KEY ([TrainingReportItemParticipantOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingReportItemParticipants_Users'
CREATE INDEX [IX_FK_TrainingReportItemParticipants_Users]
ON [dbo].[TrainingReportItemParticipants]
    ([TrainingReportItemParticipantOwner]);
GO

-- Creating foreign key on [TrainingID] in table 'TrainingReportItems'
ALTER TABLE [dbo].[TrainingReportItems]
ADD CONSTRAINT [FK_TrainingReportItems_Trainings]
    FOREIGN KEY ([TrainingID])
    REFERENCES [dbo].[Trainings]
        ([TrainingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingReportItems_Trainings'
CREATE INDEX [IX_FK_TrainingReportItems_Trainings]
ON [dbo].[TrainingReportItems]
    ([TrainingID]);
GO

-- Creating foreign key on [TrainingReportItemOwner] in table 'TrainingReportItems'
ALTER TABLE [dbo].[TrainingReportItems]
ADD CONSTRAINT [FK_TrainingReportItems_Users]
    FOREIGN KEY ([TrainingReportItemOwner])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TrainingReportItems_Users'
CREATE INDEX [IX_FK_TrainingReportItems_Users]
ON [dbo].[TrainingReportItems]
    ([TrainingReportItemOwner]);
GO

-- Creating foreign key on [SupervisorUserLoginName] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Users]
    FOREIGN KEY ([SupervisorUserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Users_Users'
CREATE INDEX [IX_FK_Users_Users]
ON [dbo].[Users]
    ([SupervisorUserLoginName]);
GO

-- Creating foreign key on [UserLoginName] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_Users_Users1]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserLoginName] in table 'Visits'
ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT [FK_Visits_Users]
    FOREIGN KEY ([UserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Visits_Users'
CREATE INDEX [IX_FK_Visits_Users]
ON [dbo].[Visits]
    ([UserLoginName]);
GO

-- Creating foreign key on [SupervisorUserLoginName] in table 'Visits'
ALTER TABLE [dbo].[Visits]
ADD CONSTRAINT [FK_Visits_Users_Supervisors]
    FOREIGN KEY ([SupervisorUserLoginName])
    REFERENCES [dbo].[Users]
        ([UserLoginName])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Visits_Users_Supervisors'
CREATE INDEX [IX_FK_Visits_Users_Supervisors]
ON [dbo].[Visits]
    ([SupervisorUserLoginName]);
GO

-- Creating foreign key on [VisitRuleID] in table 'VisitRulesType1'
ALTER TABLE [dbo].[VisitRulesType1]
ADD CONSTRAINT [FK_VisitRulesType1_VisitRules]
    FOREIGN KEY ([VisitRuleID])
    REFERENCES [dbo].[VisitRules]
        ([VisitRuleID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [VisitRuleID] in table 'VisitRulesType2'
ALTER TABLE [dbo].[VisitRulesType2]
ADD CONSTRAINT [FK_VisitRulesType2_VisitRules]
    FOREIGN KEY ([VisitRuleID])
    REFERENCES [dbo].[VisitRules]
        ([VisitRuleID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AdvCampaignMaterials_AdvCampaignMaterialID] in table 'AdvCampaignMaterialMappings'
ALTER TABLE [dbo].[AdvCampaignMaterialMappings]
ADD CONSTRAINT [FK_AdvCampaignMaterialMappings_AdvCampaignMaterials]
    FOREIGN KEY ([AdvCampaignMaterials_AdvCampaignMaterialID])
    REFERENCES [dbo].[AdvCampaignMaterials]
        ([AdvCampaignMaterialID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AdvCampaigns_AdvCampaignID] in table 'AdvCampaignMaterialMappings'
ALTER TABLE [dbo].[AdvCampaignMaterialMappings]
ADD CONSTRAINT [FK_AdvCampaignMaterialMappings_AdvCampaigns]
    FOREIGN KEY ([AdvCampaigns_AdvCampaignID])
    REFERENCES [dbo].[AdvCampaigns]
        ([AdvCampaignID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AdvCampaignMaterialMappings_AdvCampaigns'
CREATE INDEX [IX_FK_AdvCampaignMaterialMappings_AdvCampaigns]
ON [dbo].[AdvCampaignMaterialMappings]
    ([AdvCampaigns_AdvCampaignID]);
GO

-- Creating foreign key on [Brands_BrandID] in table 'Category1BrandMappings'
ALTER TABLE [dbo].[Category1BrandMappings]
ADD CONSTRAINT [FK_Category1BrandMappings_Brands]
    FOREIGN KEY ([Brands_BrandID])
    REFERENCES [dbo].[Brands]
        ([BrandID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Categories1_Category1ID] in table 'Category1BrandMappings'
ALTER TABLE [dbo].[Category1BrandMappings]
ADD CONSTRAINT [FK_Category1BrandMappings_Categories1]
    FOREIGN KEY ([Categories1_Category1ID])
    REFERENCES [dbo].[Categories1]
        ([Category1ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Category1BrandMappings_Categories1'
CREATE INDEX [IX_FK_Category1BrandMappings_Categories1]
ON [dbo].[Category1BrandMappings]
    ([Categories1_Category1ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------