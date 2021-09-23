using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieTicketBooking.Models
{
    public class User
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        
        [Required]
        public string Email { get; set; }
        
        [Required]
        public string FirstName { get; set; }
        
        [Required]
        public string LastName { get; set; }
       
        [Required]
        public string Password { get; set; }
        
        [Required]
        public long MobileNum { get; set; }

        [Required]
        public bool IsAdmin { get; set; } = false;

        public ICollection<Booking> Booking { get; set; }

    }
}