using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking.admin
{
    public partial class addMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            string path = Path.GetFileName(Poster.PostedFile.FileName);
            string fullpath = "~/posters/" + path;
            Poster.PostedFile.SaveAs(Server.MapPath(fullpath));

            MovieContext db = new MovieContext();
            Movie movie = new Movie()
            {
                Title = Title.Text,
                ReleaseDate = DateTime.Parse(ReleaseDate.Text),
                Poster = fullpath                
            };
            db.Movies.Add(movie);
            db.SaveChanges();
        }
    }
}