namespace BanQuanAo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Orders")]
    public partial class Orders
    {
        public int Id { get; set; }

        public int Custemerid { get; set; }

        [Column(TypeName = "date")]
        public DateTime Orderdate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Requireddate { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Shipperdate { get; set; }

        public double? Total { get; set; }

        [StringLength(100)]
        public string Address { get; set; }

        [StringLength(100)]
        public string City { get; set; }

        [StringLength(100)]
        public string Country { get; set; }

        public DateTime? Created_at { get; set; }

        public int? Created_by { get; set; }

        public DateTime? Updated_at { get; set; }

        public int? Updated_by { get; set; }

        public bool? Trash { get; set; }

        public int? StateId { get; set; }
    }
}
