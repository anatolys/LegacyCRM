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
    
    public partial class SellOutReportItem
    {
        public System.Guid SellOutReportItemGUID { get; set; }
        public System.Guid ReportGUID { get; set; }
        public string SellOutReportItemOwner { get; set; }
        public int SellOutReportItemTypeID { get; set; }
        public decimal SellOutReportItemValue { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    
        public virtual Report Report { get; set; }
        public virtual SellOutReportItemType SellOutReportItemType { get; set; }
        public virtual User User { get; set; }
    }
}
