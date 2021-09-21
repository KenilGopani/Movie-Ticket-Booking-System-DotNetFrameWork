using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking
{
    public partial class movieDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            MovieContext db = new MovieContext();
            Movie movie = db.Movies.FirstOrDefault(m => m.Id ==id);

            string html = $@"
            <div class=""d-flex justify-content-between align-items-center mt-2"">
                <h1>{movie.Title}</h1> 
                <div><a runat = ""server"" id=""BookShow"" class=""btn btn-danger"">Book Show</a></div>
            </div>
            <hr class=""text-primary"" />
            <div class=""d-flex justify-content-center"">
                <img src = ""{movie.Poster2}"" class=""w-75 h-75"" />
            </div>
            <h2>
                <span class=""badge bg-dark mt-4 mb-2"">About The Movie</span>
            </h2>
            <p>{movie.Description}</p>
            <h5 class=""my-3"">
                <span class=""badge bg-dark"">{movie.Language}</span>
                <span class=""badge bg-dark"">{movie.Duration}   •   {movie.Category}  •  34 Sep,2029 </span>
            </h5>
            <hr class=""text-dark"" />";
            Details.Controls.Add(new Literal() {Text=html});
        }
    }

}