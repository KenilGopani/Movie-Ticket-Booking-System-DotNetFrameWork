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
                if(user.IsAdmin)
                {
                    Session["IsAdmin"] = user.IsAdmin;
                }
                Session["User"] = user.Email;

                string returnURL = Request.QueryString["returnURL"];
                if (returnURL!=null)
                    Response.Redirect(returnURL);
                else
                    Response.Redirect("~/home.aspx");
            }
            else
                Error.Text = "Email or Password is Invalid";
        }
    }
}