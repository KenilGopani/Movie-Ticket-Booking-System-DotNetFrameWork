using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string html = string.Empty;
            MovieContext db = new MovieContext();
            var movies = db.Movies.ToList();
            foreach(var movie in movies)
            {
                html += $@"<div class=""col my-4"" >
                                <a href=""movieDetails.aspx?id={movie.Id}"" class=""card text-center h-100 text-dark"" style=""text-decoration:none;"" >
                                    <div class=""card-body d-flex justify-content-center"">
                                        <img src=""{movie.Poster}"" class=""img-top"" alt=""Poster yet not available"" width=""260"" height=""375""/>
                                    </div>
                                    <div class=""card-footer"">
                                        {movie.Title}
                                    </div>
                                </a>
                            </div>";
            }
            Movies.Controls.Add(new Literal() { Text = html });
        }
    }
}