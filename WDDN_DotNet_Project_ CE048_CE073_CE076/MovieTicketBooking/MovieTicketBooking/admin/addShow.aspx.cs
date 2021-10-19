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
        Movie movie;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAdmin"] == null)
                Response.Redirect("~/home.aspx");

            MovieContext db = new MovieContext();
            var movies = db.Movies.ToList();
            if (Session["Added"] == null)
            {
                foreach (var movie in movies)
                {
                    aMovie.Items.Add(movie.Title);
                }
                Session["Added"] = true;
            }
        }

        protected void AddShow_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            movie = db.Movies.FirstOrDefault(m => m.Title == aMovie.SelectedItem.Text);
            for(int i = 0; i < Time.Items.Count; i++)
            {
                if(Time.Items[i].Selected)
                {
                    Show show = new Show()
                    {
                        Movie = movie,
                        StartDate = DateTime.Parse(StartDate.Text),
                        EndDate = DateTime.Parse(EndDate.Text),
                        Price = decimal.Parse(Price.Text),
                        Time = Time.Items[i].Text,
                        Language = Language.SelectedItem.Text

                    };
                    db.Shows.Add(show);
                }
            }
            db.SaveChanges();
            Session["Added"] = null;
            Response.Redirect("~/home.aspx");
        }

        protected void aMovie_SelectedIndexChanged(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            movie = db.Movies.FirstOrDefault(m => m.Title == aMovie.SelectedItem.Text);
            List<string> languages = movie.Language.Split(',').ToList();
            Language.Items.Clear();
            foreach(var lan in languages)
            {
                Language.Items.Add(lan);
            }
        }
    }
}