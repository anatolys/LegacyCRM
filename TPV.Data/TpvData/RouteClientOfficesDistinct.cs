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
    
    public partial class RouteClientOfficesDistinct
    {
        public int RouteID { get; set; }
        public int ClientOfficeID { get; set; }
        public string UserLoginName { get; set; }
    
        public virtual ClientOffice ClientOffice { get; set; }
        public virtual Route Route { get; set; }
        public virtual User User { get; set; }
    }
}
