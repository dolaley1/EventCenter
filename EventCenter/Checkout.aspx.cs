using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Center
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String dayPrice = Session["price"].ToString();
            String day = Session["numDays"].ToString();
            int price = Convert.ToInt32(dayPrice);
            int days = Convert.ToInt32(day);
            int totalPrice = days * price;
            lRoom.Text = Session["room"].ToString();
            if (lRoom.Text == "0") { lRoom.Text = "Board Room"; }
            if (lRoom.Text == "1") { lRoom.Text = "Presentation Room"; }
            if (lRoom.Text == "2") { lRoom.Text = "Large Slider Room"; }
            if (lRoom.Text == "3") { lRoom.Text = "Auditorium"; }
            if (lRoom.Text == "4") { lRoom.Text = "Ballroom"; }
            if (lRoom.Text == "5") { lRoom.Text = "Courtyard"; }
            if (lRoom.Text == "6") { lRoom.Text = "Changeroom"; }
            if (lRoom.Text == "7") { lRoom.Text = "Catering Add-On"; }
            if (lRoom.Text == "8") { lRoom.Text = "No Room Selected."; }    
            lArrivalDate.Text = Session["arrivaldate"].ToString();
            lLeaveDate.Text = Session["departuredate"].ToString();
            lCustomer.Text = Session["firstname"].ToString() + " " + Session["lastname"].ToString();
            lPrice.Text = totalPrice.ToString();
            lRequests.Text = Session["requests"].ToString();
            lPhone.Text = Session["phone"].ToString();
            lEmail.Text = Session["email"].ToString();
        }

        protected void bEdit_Click(object sender, EventArgs e)
        {
            Session["room"] = 9;


            Session["arrivaldate"] = lArrivalDate.Text;
            Session["departuredate"] = lLeaveDate.Text;
            Session["lastname"] = Session["lastname"];
            Session["firstname"] = Session["firstname"];
            Session["requests"] = lRequests.Text;
            Session["phone"] = lPhone.Text;
            Session["email"] = lEmail.Text; 
            Response.Redirect("~/Reservations.aspx");
        }

        protected void bPlaceReservation_Click(object sender, EventArgs e)
        {
            lblOrder.Visible = true;
        }
    }
}