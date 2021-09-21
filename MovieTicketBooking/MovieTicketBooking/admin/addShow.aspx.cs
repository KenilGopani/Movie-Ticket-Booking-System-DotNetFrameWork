using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking.admin
{
    public partial class addShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            var movies = db.Movies.ToList();
            foreach(var movie in movies)
            {
                aMovie.Items.Add(movie.Title);
            }
        }

        protected void AddShow_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            for(int i = 0; i < Time.Items.Count; i++)
            {
                if(Time.Items[i].Selected)
                {
                    Movie movie = db.Movies.FirstOrDefault(m => m.Title == aMovie.Text);
                    Show show = new Show()
                    {
                        Movie = movie,
                        StartDate = DateTime.Parse(StartDate.Text),
                        EndDate = DateTime.Parse(EndDate.Text),
                        Price = decimal.Parse(Price.Text),
                        Time = Time.Items[i].Text
                    };
                    db.Shows.Add(show);
                }
            }
            db.SaveChanges();
        }
    }
}