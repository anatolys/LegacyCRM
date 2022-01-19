using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebTpv
{
    public class VisitItem
    {
        public int Id { get; set; }
        //Visit properties from database
        public Guid VisitGUID { get; set; }
        public string UserLoginName { get; set; }
        public int ClientOfficeID { get; set; }
        public int UserSubroleID { get; set; }
        public string SupervisorUserLoginName { get; set; }
        public DateTime VisitDate { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime ModifiedWhen { get; set; }
        public int VisitMadeBySupervisor { get; set; }
        public DateTime VisitStartedWhen { get; set; }
        public DateTime VisitFinishedWhen { get; set; }
        public int CreatedInWeb { get; set; }
        public int InRoute { get; set; }
        //Additional properties for mobile client application
        public string VisitShortAddress { get; set; }
        public string VisitAddress { get; set; }
        public string VisitClient { get; set; }
        public string VisitCity { get; set; }
    }
}