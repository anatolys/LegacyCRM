using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel;

namespace CrmMobile
{
    [Table("sellout")]
    public class IhsReportItem
    {
        private string share;
        [PrimaryKey]
        public System.Guid SellOutReportItemGUID { get; set; }
        public System.Guid ReportGUID { get; set; }
        public string SellOutReportItemOwner { get; set; }
        public decimal SomeTradingSalesRub { get; set; }
        public decimal SomeTradingSalesItems { get; set; }
        public decimal TotalSalesRub { get; set; }
        public decimal TotalSalesItems { get; set; }
        public string Share
        { get
            {
                return share;
            } set
            {
                if (TotalSalesRub != 0)
                {
                    share = (SomeTradingSalesRub / TotalSalesRub).ToString("p");
                }
                else
                {
                    share = "0";
                }
                //share = value;
            }
        }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ReportFirstSavedWhen { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
    }
}
