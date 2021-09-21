using MovieTicketBooking.Models;
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
            <div class=""container"">
                <div class=""d-flex justify-content-between align-items-center my-3"">
                    <h1>{movie.Title}</h1> 
                    <div><a runat = ""server"" id=""BookShow"" class=""btn btn-primary"">Book Show</a></div>
                </div>
            </div>
            <div class=""d-flex justify-content-center bg-dark container-fluid"">
                <img src = ""{movie.FullPoster}"" class=""container""/>
            </div>
            <div class=""container"">
                <h2 class=""my-3"">About The Movie</h2>
                <p>The Suicide Squad is a 2021 American superhero film based on DC Comics featuring the team Suicide Squad. Produced by DC Films, Atlas Entertainment, and The Safran Company, and distributed by Warner Bros. Pictures, it is a standalone sequel to Suicide Squad (2016) and the tenth film in the DC Extended Universe (DCEU). It was written and directed by James Gunn and stars an ensemble cast including Margot Robbie, Idris Elba, John Cena, Joel Kinnaman, Sylvester Stallone, Viola Davis, David Dastmalchian, Daniela Melchior, Michael Rooker, Jai Courtney, Peter Capaldi, Alice Braga, and Pete Davidson. In the film, a task force of convicts known as the Suicide Squad are sent to the island nation of Corto Maltese to destroy evidence of the giant alien starfish Starro the Conqueror.

David Ayer was set to return as director for a Suicide Squad sequel by March 2016, but in December he chose to develop a Gotham City Sirens film instead. Warner Bros. considered several replacement directors before hiring Gavin O'Connor in September 2017. He left by October 2018, and Gunn was hired to write and direct the film after being temporarily fired by Disney and Marvel Studios as the director of Guardians of the Galaxy Vol. 3 (2023). He drew inspiration from war films and John Ostrander's 1980s Suicide Squad comics, and decided to explore new characters in a story separate from the first film's narrative, though some cast members do return from Suicide Squad. Filming began in Atlanta, Georgia, in September 2019, and concluded in Panama in February 2020. </p>
                <h5 class=""my-3"">
                    <span class=""badge bg-dark"">{movie.Language}</span>
                    <span class=""badge bg-dark"">{movie.Duration}   •   {movie.Category}  •  {movie.ReleaseDate : d MMM, yyyy} </span>
                </h5>
            </div>";
            
            Details.Controls.Add(new Literal() {Text=html});
        }
    }

}