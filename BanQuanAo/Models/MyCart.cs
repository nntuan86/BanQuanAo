namespace BanQuanAo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MyCart")]
    public partial class MyCart
    {
        [Key]
        public int Masp { get; set; }

        [Required]
        [StringLength(255)]
        public string Tensp { get; set; }

        public double Giasp { get; set; }

        public int SoLuong { get; set; }

        public double Tien { get; set; }

        [Required]
        [StringLength(15)]
        public string Img { get; set; }

        public DateTime? Created_at { get; set; }

        public int? Created_by { get; set; }

        public DateTime? Updated_at { get; set; }

        public int? Updated_by { get; set; }

        public int? StateId { get; set; }
    }
}
