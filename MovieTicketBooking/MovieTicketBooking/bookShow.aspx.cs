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
            MovieContext db = new MovieContext();
            Movie movie = db.Movies.FirstOrDefault(m => m.Id == id);

            DateTime today = DateTime.Now.Date;
            DateTime tomorrow = DateTime.Now.Date.AddDays(1);
            Dates.Items.Add(new ListItem() { Value = today.ToString(), Text = "Today" });
            Dates.Items.Add(new ListItem() { Value = tomorrow.ToString(), Text = "Tomorrow" });

            List<string> languages = movie.Language.Split(',').ToList();
            foreach(var lang in languages)
                Languages.Items.Add(lang);

            SelectSeat.Visible = false;
        }

        protected void Next_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            DateTime selectedDate = DateTime.Parse(Dates.SelectedValue);
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

            Session["SelectedDate"] = Dates.SelectedValue; 
        }

        protected void Shows_SelectedIndexChanged(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            int selectedShow = Int32.Parse(Shows.SelectedValue);
            Show show = db.Shows.Where(s => s.Id == selectedShow).FirstOrDefault();
            DateTime selectedDate = DateTime.Parse(Session["selectedDate"].ToString());
            var bookings = db.Bookings.Where(b => b.Show.Id == show.Id && DateTime.Compare(b.BDate,selectedDate) ==0).ToList();
            List<int> bookedSeats = new List<int>();

            foreach(var book in bookings)
            {
                bookedSeats.Add(book.SeatNo);
            }

            Seats.Items.Clear();
            for (int i = 0; i < 100; i++)
            {
                Seats.Items.Add((i + 1).ToString());
                if(bookedSeats.Contains(i+1))
                {
                    Seats.Items[i].Enabled = false;
                    Seats.Items[i].Selected = true;
                }
            }
            SelectSeat.Visible = true;
        }

        protected void BookTickets_Click(object sender, EventArgs e)
        {
            MovieContext db = new MovieContext();
            Booking booking = new Booking();


        }
    }
}