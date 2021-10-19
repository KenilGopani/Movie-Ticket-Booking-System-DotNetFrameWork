using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking
{
    public partial class Sign_Up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            if (Password.Text.Equals(CPassword.Text))
            {
                MovieContext db = new MovieContext();
                User user = db.Users.Where(u => u.Email.Equals(Email.Text)).FirstOrDefault();
                if(user == null)
                {
                    user = new User()
                    {
                        FirstName = FirstName.Text,
                        LastName = LastName.Text,
                        Email = Email.Text,
                        MobileNum = Int64.Parse(MobileNum.Text),
                        Password = Password.Text
                    };
                    db.Users.Add(user);
                    db.SaveChanges();
                    Response.Redirect("~/signIn.aspx");
                }
                else
                {
                    Error.Text = "Email already taken";
                    return;
                }
            }
            else
                Error.Text = "Password and confirm password doesn't match";
        }
    }
}