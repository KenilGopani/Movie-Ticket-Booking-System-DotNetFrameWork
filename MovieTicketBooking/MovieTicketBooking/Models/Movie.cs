using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace MovieTicketBooking.Models
{
    public class Movie
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [Required]
        public string Title { get; set; }
        
        [Required]
        public DateTime ReleaseDate { get; set; }
        
        [Required]
        public string Poster { get; set; }
        
        [Required]
        public string FullPoster { get; set; }
        
        [Required]
        public string Description { get; set; }
        
        [Required]
        public string Duration { get; set; }
        
        [Required]
        public string Language { get; set; }
        
        [Required]
        public string Category { get; set; }
        
        public ICollection<Show> Shows { get; set; }
        
    }
}