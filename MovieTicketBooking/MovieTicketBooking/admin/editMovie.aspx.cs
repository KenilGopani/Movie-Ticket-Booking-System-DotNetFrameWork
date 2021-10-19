using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking.admin
{
    public partial class editMovie : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"]);
            
            if (!IsPostBack)
            {
                if (Session["IsAdmin"] == null)
                    Response.Redirect("~/home.aspx");
            
                MovieContext db = new MovieContext();
            
                var movie = db.Movies.FirstOrDefault(m => m.Id == id);
                Title.Text = movie.Title;
                ReleaseDate.Text = movie.ReleaseDate.ToString();
                Duration.Text = movie.Duration;
                Description.Text = movie.Description;
                List<string> languages = movie.Language.Split(',').ToList();
            
                for(int i = 0; i < Language.Items.Count; i++)
                    if (languages.Contains(Language.Items[i].Text))
                        Language.Items[i].Selected = true;
                    

                char[] pipe = { ' ', '|', ' ' };
                List<string> categories = movie.Category.Split(pipe).ToList();

                for (int i = 0; i < Category.Items.Count; i++)
                    if (categories.Contains(Category.Items[i].Text))
                        Category.Items[i].Selected = true;
            }
        }

        protected void EditMovie_Click(object sender, EventArgs e)
        {
            string str_cat = string.Empty;
            for (int i = 0; i < Category.Items.Count; i++)
                if (Category.Items[i].Selected)
                    str_cat += Category.Items[i].Text + " | ";

            string str_lang = string.Empty;
            for (int i = 0; i < Language.Items.Count; i++)
                if (Language.Items[i].Selected)
                    str_lang += Language.Items[i].Text + ",";


            MovieContext db = new MovieContext();
            Movie movie = db.Movies.FirstOrDefault(m => m.Id == id);
            movie.Title = Title.Text;
            movie.ReleaseDate = DateTime.Parse(ReleaseDate.Text);
            movie.Description = Description.Text;
            movie.Duration = Duration.Text;
            movie.Language = str_lang.Substring(0, str_lang.Length - 1);
            movie.Category = str_cat.Substring(0, str_cat.Length - 2);

/*            Label1.Text = movie.Title + movie.ReleaseDate.ToString() + movie.Language + movie.Category + movie.Duration;
*/
            db.Entry(movie).State = EntityState.Modified;
            db.SaveChanges();
            Response.Redirect("~/movieDetails.aspx?id=" + id);
        }
    }
}