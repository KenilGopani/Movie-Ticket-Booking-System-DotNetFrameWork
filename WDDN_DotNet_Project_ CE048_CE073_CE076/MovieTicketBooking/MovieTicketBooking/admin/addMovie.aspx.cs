using MovieTicketBooking.Models;
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
            if(Session["IsAdmin"] == null)
                Response.Redirect("~/home.aspx");
        }

        protected void AddMovie_Click(object sender, EventArgs e)
        {
            string path = Path.GetFileName(Poster.FileName);
            string fullpath = "/posters/" + path;
            Poster.SaveAs(Server.MapPath(fullpath));

            string path2 = Path.GetFileName(FullPoster.FileName);
            string fullpath2 = "/posters/" + path2;
            FullPoster.SaveAs(Server.MapPath(fullpath2));

            string str_cat = string.Empty;
            for (int i = 0; i < Category.Items.Count; i++)
                if (Category.Items[i].Selected)
                    str_cat += Category.Items[i].Text + " | ";

            string str_lang = string.Empty;
            for(int i=0;i<Language.Items.Count;i++)
                if(Language.Items[i].Selected)
                    str_lang += Language.Items[i].Text + ",";


            MovieContext db = new MovieContext();
            Movie movie = new Movie()
            {
                Title = Title.Text,
                ReleaseDate = DateTime.Parse(ReleaseDate.Text),
                Poster = fullpath,
                FullPoster = fullpath2,
                Description = Description.Text,
                Duration = Duration.Text,
                Language = str_lang.Substring(0, str_lang.Length - 1),
                Category = str_cat.Substring(0, str_cat.Length - 2)
            };
            db.Movies.Add(movie);
            db.SaveChanges();
        }
    }
}