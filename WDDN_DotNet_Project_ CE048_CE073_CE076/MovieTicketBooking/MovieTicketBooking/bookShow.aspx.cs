using MovieTicketBooking.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieTicketBooking
{
    public partial class bookShow : System.Web.UI.Page
    {
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                if(Session["SelectedDate"] != null)
                    Session["SelectedDate"] = null;
                if (Session["SelectedLanguage"] != null)
                    Session["SelectedLanguage"] = null;

                if(Session["User"]==null)
                {
                    string returnURL = $"~/bookShow.aspx?id={id}";
                    Response.Redirect("~/signIn.aspx?returnURL="+returnURL);
                }
            
                MovieContext db = new MovieContext();
                Movie movie = db.Movies.FirstOrDefault(m => m.Id == id);
            
                Dates.Items.Clear();
                DateTime day;
                for(int i = 0; i < 3; i++)
                {
                    day = DateTime.Now.Date.AddDays(i+1);
                    Dates.Items.Add(new ListItem() { Value = day.ToString(), Text = day.ToString("ddd, dd MMM") });
                }
                Dates.Items[0].Selected = true;

                List<string> languages = movie.Language.Split(',').ToList();
                Languages.Items.Clear();
                foreach(var lang in languages)
                Languages.Items.Add(lang);
                Languages.Items[0].Selected = true;

                SelectSeat.Visible = false;
                Session["Title"] = movie.Title;
            }
        }

        protected void Next_Click(object sender, EventArgs e)
        {
           
            DateTime selectedDate = DateTime.Parse(Dates.SelectedValue);
            Session["SelectedDate"] = Dates.SelectedValue;
            Session["selectedLanguage"] = Languages.SelectedValue;
            
            MovieContext db = new MovieContext();

            var shows = db.Shows.Where(
                s => s.Movie.Id == id 
                && s.Language == Languages.SelectedValue
                && DateTime.Compare(s.StartDate,selectedDate) <= 0
                && DateTime.Compare(s.EndDate, selectedDate) >= 0).ToList();
            
            Shows.Items.Clear();
            foreach (var show in shows)
            {
                Shows.Items.Add(new ListItem() { Value = show.Id.ToString(), Text = show.Time });
            }

            SelectLanguage.Visible = false;
            SelectDate.Visible = false;
            SelectShow.Visible = true;
            Back.Visible = true;

        }

        protected void Shows_SelectedIndexChanged(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            
            int selectedShow = Int32.Parse(Shows.SelectedValue);
            Show show = db.Shows.Where(s => s.Id == selectedShow).FirstOrDefault();
            Session["ShowId"] = show.Id.ToString();

            DateTime selectedDate = DateTime.Parse(Session["selectedDate"].ToString());
            var bookings = db.Bookings.Where(b => b.Show.Id == show.Id && DateTime.Compare(b.Date,selectedDate) == 0).ToList();
            List<int> bookedSeats = new List<int>();

            foreach(var book in bookings)
                bookedSeats.Add(book.SeatNo);

            Seats.Items.Clear();
            for (int i = 0; i < 100; i++)
            {
                Seats.Items.Add((i + 1).ToString());
                if(bookedSeats.Contains(i+1))
                {
                    Seats.Items[i].Enabled = false;
                   // Seats.Items[i].Selected = true;
                }
            }
            SelectSeat.Visible = true;
            PriceDisp.Text = "Price: $" + show.Price.ToString() + " / seat";
            
        }

        protected void BookTickets_Click(object sender, EventArgs e)
        {
/*            int total_count = 0; 
*/            int showId = int.Parse(Session["ShowId"].ToString());
            string email = Session["User"].ToString();
            DateTime selectedDate = DateTime.Parse(Session["selectedDate"].ToString());

            MovieContext db = new MovieContext();
            Show show = db.Shows.Where(s => s.Id == showId).FirstOrDefault();

            User user = db.Users.FirstOrDefault(u => u.Email == email);

            for (int i = 0; i < Seats.Items.Count; i++)
            {
                if (Seats.Items[i].Selected)
                {
                    /*total_count++;*/
                    Booking booking = new Booking()
                    {
                        Date = selectedDate,
                        Show = show,
                        SeatNo = i + 1,
                        User = user
                    };
                    db.Bookings.Add(booking);
                }
            }
            db.SaveChanges();

            Session["Title"] = null;
            Session["ShowId"] = null;

            if (Session["selectedDate"] != null)
                Session["selectedDate"] = null;
            if(Session["selectedLanguage"] != null)
                Session["selectedLanguage"] = null;

            Response.Redirect("~/home.aspx");
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Session["selectedDate"] = null;
            Session["selectedLanguage"] = null;
            Response.Redirect("~/bookShow.aspx?id=" + id);
        }

      
    }
}