using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace ProjectEnd_WebShop.Models.Tables
{
    public partial class webshopContext : DbContext
    {
        public webshopContext()
        {
        }

        public webshopContext(DbContextOptions<webshopContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Admin> Admins { get; set; } = null!;
        public virtual DbSet<Catalog> Catalogs { get; set; } = null!;
        public virtual DbSet<Order> Orders { get; set; } = null!;
        public virtual DbSet<Product> Products { get; set; } = null!;
        public virtual DbSet<Slider> Sliders { get; set; } = null!;
        public virtual DbSet<Style> Styles { get; set; } = null!;
        public virtual DbSet<Transaction> Transactions { get; set; } = null!;
        public virtual DbSet<User> Users { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseMySql("server=localhost;database=webshop;user=root;password=123456789ha;allow user variables=True", Microsoft.EntityFrameworkCore.ServerVersion.Parse("8.0.28-mysql"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.UseCollation("utf8mb4_0900_ai_ci")
                .HasCharSet("utf8mb4");

            modelBuilder.Entity<Admin>(entity =>
            {
                entity.ToTable("admin");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Created).HasColumnName("created");

                entity.Property(e => e.Email)
                    .HasMaxLength(100)
                    .HasColumnName("email");

                entity.Property(e => e.Level).HasColumnName("level");

                entity.Property(e => e.Name)
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.Password)
                    .HasMaxLength(40)
                    .HasColumnName("password");
            });

            modelBuilder.Entity<Catalog>(entity =>
            {
                entity.ToTable("catalog");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Created)
                    .HasColumnType("datetime")
                    .HasColumnName("created");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .HasColumnName("description");

                entity.Property(e => e.Name)
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.SortOrder).HasColumnName("sort_order");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.ToTable("order");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Amount)
                    .HasPrecision(15, 2)
                    .HasColumnName("amount");

                entity.Property(e => e.ProductId).HasColumnName("product_id");

                entity.Property(e => e.Qty).HasColumnName("qty");

                entity.Property(e => e.Status).HasColumnName("status");

                entity.Property(e => e.TransactionId).HasColumnName("transaction_id");
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.ToTable("product");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Buyed).HasColumnName("buyed");

                entity.Property(e => e.CatalogId).HasColumnName("catalog_id");

                entity.Property(e => e.Content)
                    .HasColumnType("text")
                    .HasColumnName("content");

                entity.Property(e => e.Created).HasColumnName("created");

                entity.Property(e => e.Discount)
                    .HasColumnName("discount")
                    .HasDefaultValueSql("'0'");

                entity.Property(e => e.ImageLink)
                    .HasMaxLength(100)
                    .HasColumnName("image_link");

                entity.Property(e => e.Name)
                    .HasMaxLength(255)
                    .HasColumnName("name");

                entity.Property(e => e.Price)
                    .HasPrecision(15, 2)
                    .HasColumnName("price");

                entity.Property(e => e.RateCount)
                    .HasColumnName("rate_count")
                    .HasDefaultValueSql("'1'");

                entity.Property(e => e.RateTotal)
                    .HasColumnName("rate_total")
                    .HasDefaultValueSql("'4'");

                entity.Property(e => e.View).HasColumnName("view");
            });

            modelBuilder.Entity<Slider>(entity =>
            {
                entity.ToTable("slider");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Created)
                    .HasColumnType("datetime")
                    .HasColumnName("created");

                entity.Property(e => e.ImageLink)
                    .HasMaxLength(100)
                    .HasColumnName("image_link");

                entity.Property(e => e.Link)
                    .HasMaxLength(100)
                    .HasColumnName("link");

                entity.Property(e => e.Name)
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.SortOrder).HasColumnName("sort_order");
            });

            modelBuilder.Entity<Style>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("style");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Created)
                    .HasColumnType("datetime")
                    .HasColumnName("created");

                entity.Property(e => e.Description)
                    .HasMaxLength(255)
                    .HasColumnName("description");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Name)
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.SortOrder).HasColumnName("sort_order");
            });

            modelBuilder.Entity<Transaction>(entity =>
            {
                entity.ToTable("transaction");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Amount)
                    .HasPrecision(15, 2)
                    .HasColumnName("amount");

                entity.Property(e => e.Created).HasColumnName("created");

                entity.Property(e => e.Message)
                    .HasMaxLength(255)
                    .HasColumnName("message");

                entity.Property(e => e.Payment)
                    .HasMaxLength(32)
                    .HasColumnName("payment");

                entity.Property(e => e.Status).HasColumnName("status");

                entity.Property(e => e.UserAddress)
                    .HasMaxLength(100)
                    .HasColumnName("user_address");

                entity.Property(e => e.UserEmail)
                    .HasMaxLength(100)
                    .HasColumnName("user_email");

                entity.Property(e => e.UserId).HasColumnName("user_id");

                entity.Property(e => e.UserName)
                    .HasMaxLength(100)
                    .HasColumnName("user_name");

                entity.Property(e => e.UserPhone)
                    .HasMaxLength(100)
                    .HasColumnName("user_phone");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("user");

                entity.HasCharSet("utf8")
                    .UseCollation("utf8_unicode_ci");

                entity.Property(e => e.Id).HasColumnName("id");

                entity.Property(e => e.Address)
                    .HasMaxLength(255)
                    .HasColumnName("address");

                entity.Property(e => e.Created).HasColumnName("created");

                entity.Property(e => e.Email)
                    .HasMaxLength(50)
                    .HasColumnName("email");

                entity.Property(e => e.Name)
                    .HasMaxLength(100)
                    .HasColumnName("name");

                entity.Property(e => e.Password)
                    .HasMaxLength(50)
                    .HasColumnName("password");

                entity.Property(e => e.Phone)
                    .HasMaxLength(15)
                    .HasColumnName("phone");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
