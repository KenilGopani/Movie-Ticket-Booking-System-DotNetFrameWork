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
            string fullpath = "/posters/" + path;
            Poster.PostedFile.SaveAs(Server.MapPath(fullpath));

            string path2 = Path.GetFileName(Poster2.PostedFile.FileName);
            string fullpath2 = "/posters/" + path;
            Poster2.PostedFile.SaveAs(Server.MapPath(fullpath2));

            string scat = string.Empty;
            foreach (var s in Category.Items)
            {
                scat += s.ToString() + " | ";

            }
            

            MovieContext db = new MovieContext();
            Movie movie = new Movie()
            {
                Title = Title.Text,
                ReleaseDate = DateTime.Parse(ReleaseDate.Text),
                Poster = fullpath,
                Poster2 = fullpath2,
                Description = Description.Text,
                Duration = Duration.Text,
                Language = Language.SelectedValue,
                Category = scat.Substring(0, scat.Length - 2)
            };
            db.Movies.Add(movie);
            db.SaveChanges();
        }
    }
}