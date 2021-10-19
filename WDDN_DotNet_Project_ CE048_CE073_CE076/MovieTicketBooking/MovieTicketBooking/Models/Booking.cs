using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieTicketBooking.Models
{
    public class Booking
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        public User User { get; set; }
        public Show Show { get; set; }
        public DateTime Date { get; set; }
        public int SeatNo { get; set; }

    }
}