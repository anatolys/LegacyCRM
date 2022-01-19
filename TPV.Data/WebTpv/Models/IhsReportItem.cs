using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebTpv
{
    public class IhsReportItem
    {
        public int Id { get; set; }
        public System.Guid SellOutReportItemGUID { get; set; }
        public System.Guid ReportGUID { get; set; }
        public string SellOutReportItemOwner { get; set; }
        public decimal PhilipsSalesRub { get; set; }
        public decimal PhilipsSalesItems { get; set; }
        public decimal TotalSalesRub { get; set; }
        public decimal TotalSalesItems { get; set; }
        public decimal Share { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ReportFirstSavedWhen { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    }
}