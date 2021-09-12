﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
namespace MovieTicketBooking
{
    public partial class MovieContext : DbContext
    {
        public MovieContext() : base("name=MovieDB"){}

        public virtual DbSet<User> Users { get; set; } 
    }
}

