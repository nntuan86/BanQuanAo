namespace BanQuanAo.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class DBBanQuanAo : DbContext
    {
        public DBBanQuanAo()
            : base("name=BanQuanAo")
        {
        }

        public virtual DbSet<Categorys> Categorys { get; set; }
        public virtual DbSet<Contacts> Contacts { get; set; }
        public virtual DbSet<Contents> Contents { get; set; }
        public virtual DbSet<Customers> Customers { get; set; }
        public virtual DbSet<Orderdetails> Orderdetails { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<Slideshow> Slideshows { get; set; }
        public virtual DbSet<States> States { get; set; }
        public virtual DbSet<Topics> Topics { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Categorys>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Categorys>()
                .Property(e => e.Icon)
                .IsUnicode(false);

            modelBuilder.Entity<Categorys>()
                .Property(e => e.Img)
                .IsUnicode(false);

            modelBuilder.Entity<Contacts>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Contents>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Contents>()
                .Property(e => e.Img)
                .IsUnicode(false);

            modelBuilder.Entity<Customers>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<Customers>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Customers>()
                .Property(e => e.Phone)
                .IsUnicode(false);

            modelBuilder.Entity<Customers>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Products>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Products>()
                .Property(e => e.Img)
                .IsUnicode(false);

            modelBuilder.Entity<Slideshow>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Slideshow>()
                .Property(e => e.Position)
                .IsUnicode(false);

            modelBuilder.Entity<Slideshow>()
                .Property(e => e.Img)
                .IsUnicode(false);

            modelBuilder.Entity<Topics>()
                .Property(e => e.Slug)
                .IsUnicode(false);

            modelBuilder.Entity<Topics>()
                .Property(e => e.Icon)
                .IsUnicode(false);

            modelBuilder.Entity<Topics>()
                .Property(e => e.Img)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.Username)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.Password)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.Email)
                .IsUnicode(false);

            modelBuilder.Entity<Users>()
                .Property(e => e.Phone)
                .IsUnicode(false);
        }
    }
}
