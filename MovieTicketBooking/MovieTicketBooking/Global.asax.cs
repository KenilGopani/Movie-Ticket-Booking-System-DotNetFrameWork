using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace MovieTicketBooking
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            List<string> Categories = new List<string>()
            {
                "Comedy",
                "Action",
                "Drama",
                "Sci-fi",
                "Thriller",
                "Crime",
                "Fantasy",
                "Adventure",
                "Natural-Disaster"
            };
            List<string> ShowTimes = new List<string>()
            {
                "9:00 AM",
                "12:00 PM",
                "3:00 PM",
                "6:00 PM",
                "9:00 PM"
            };
            List<string> Languages = new List<string>()
            {
                "English",
                "Hindi",
                "Spanish",
                "German",
                "Gujarati",
                "Tamil",
            };
            Application["Categories"] = Categories;
            Application["Languages"] = Languages;
            Application["ShowTimes"] = ShowTimes;
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}