//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DSOFOS.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class City
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public City()
        {
            this.UserMasters = new HashSet<UserMaster>();
        }
    
        public int CityId { get; set; }
        [Required(ErrorMessage = "Enter CityName")]
        [Display(Name = "CityName")]
        public string CityName { get; set; }
        [Required(ErrorMessage = "Enter CityCode")]
        [Display(Name = "CityCode")]
        public Nullable<int> CityCode { get; set; }
        public Nullable<int> StateId { get; set; }
    
        public virtual State State { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserMaster> UserMasters { get; set; }
    }
}
