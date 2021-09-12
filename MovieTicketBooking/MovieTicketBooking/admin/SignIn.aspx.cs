using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking.admin
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            Admin admin = new Admin()
            {
                Email = "vimal@gmail.com",
                Password = "1234"
            };
            db.Admins.Add(admin);
            db.SaveChanges();
        }

        protected void Signin_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            var admin = db.Admins.Where(a => a.Email.Equals(Email.Text) && a.Password.Equals(Password.Text)).FirstOrDefault();
            if (admin != null)
                Response.Redirect("~/admin/Home.aspx");
            else
                Error.Text = "Email or Password is Invalid";
        }
    }
}