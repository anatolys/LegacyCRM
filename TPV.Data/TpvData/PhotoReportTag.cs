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
    
    public partial class PhotoReportTag
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PhotoReportTag()
        {
            this.PhotoReportItems = new HashSet<PhotoReportItem>();
            this.PhotoReportItems1 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems2 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems3 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems4 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems5 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems6 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems7 = new HashSet<PhotoReportItem>();
            this.PhotoReportItems8 = new HashSet<PhotoReportItem>();
        }
    
        public int PhotoReportTagID { get; set; }
        public int PhotoReportTagNum { get; set; }
        public string PhotoReportTagName { get; set; }
        public bool PhotoReportTagActive { get; set; }
        public string ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedWhen { get; set; }
        public int PhotoReportTagAdditionalCategory { get; set; }
        public Nullable<System.Guid> PhotoReportTagPhotoFileGUID { get; set; }
        public Nullable<System.Guid> PhotoReportTagPreviewFileGUID { get; set; }
        public string PhotoReportTagComments { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems4 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems5 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems6 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems7 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhotoReportItem> PhotoReportItems8 { get; set; }
    }
}