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
    
    public partial class ListingClientOfficeMapping
    {
        public int MappingID { get; set; }
        public int ClientOfficeID { get; set; }
        public int ListingID { get; set; }
        public string UsersAffected { get; set; }
        public byte[] UsersAffectedHash { get; set; }
    
        public virtual ClientOffice ClientOffice { get; set; }
        public virtual Listing Listing { get; set; }
    }
}
