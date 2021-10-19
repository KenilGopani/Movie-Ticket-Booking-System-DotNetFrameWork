using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace MovieTicketBooking.Models
{
    public partial class MovieContext : DbContext
    {
        public MovieContext() : base("name=MovieDB"){}

        public virtual DbSet<User> Users { get; set; }
        
        public virtual DbSet<Movie> Movies { get; set; }

        public virtual DbSet<Show> Shows { get; set; }

        public virtual DbSet<Booking> Bookings { get; set; }
    }
}

