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
    
    public partial class TrainingReportItemParticipant
    {
        public System.Guid TrainingReportItemGUID { get; set; }
        public System.Guid TrainingReportItemParticipantGUID { get; set; }
        public System.Guid ReportGUID { get; set; }
        public string TrainingReportItemParticipantOwner { get; set; }
        public string TrainingReportItemParticipantName { get; set; }
        public string TrainingReportItemParticipantPhone { get; set; }
    
        public virtual TrainingReportItem TrainingReportItem { get; set; }
        public virtual User User { get; set; }
    }
}