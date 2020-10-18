namespace BanQuanAo.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Contents")]
    public partial class Contents
    {
        public int Id { get; set; }

        public int Catid { get; set; }

        [Required]
        [StringLength(255)]
        public string Title { get; set; }

        [Required]
        [StringLength(255)]
        public string Slug { get; set; }

        [Required]
        public string Detail { get; set; }

        [Required]
        [StringLength(100)]
        public string Img { get; set; }

        [StringLength(155)]
        public string Metakey { get; set; }

        [StringLength(155)]
        public string Metadesc { get; set; }

        public DateTime? Created_at { get; set; }

        public int? Created_by { get; set; }

        public DateTime? Updated_at { get; set; }

        public int? Updated_by { get; set; }

        public bool? Trash { get; set; }

        public int? StateId { get; set; }
    }
}
