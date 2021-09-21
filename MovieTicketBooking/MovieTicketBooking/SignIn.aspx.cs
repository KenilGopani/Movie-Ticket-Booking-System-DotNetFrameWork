using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking
{
    public partial class Sign_In : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            var user = db.Users.Where(u => u.Email.Equals(Email.Text) && u.Password.Equals(Password.Text)).FirstOrDefault();
            if (user != null)
            {
                Session["user"] = user.Email;
                Response.Redirect("~/home.aspx");
            }
            else
                Error.Text = "Email or Password is Invalid";
        }
    }
}