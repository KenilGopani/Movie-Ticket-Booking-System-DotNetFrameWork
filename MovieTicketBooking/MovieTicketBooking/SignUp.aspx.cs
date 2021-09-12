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
            MovieContext db = new MovieContext();
            User user = new User()
            {
                FirstName = FirstName.Text,
                LastName = LastName.Text,
                Email = Email.Text,
                MobileNum = Int32.Parse(MobileNum.Text),
                Password = Password.Text
            };

            db.Users.Add(user);
            db.SaveChanges();
        }
    }
}