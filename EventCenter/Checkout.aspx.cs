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
            Session["room"] = lRoom.Text;
            Session["arrivaldate"] = lArrivalDate.Text;
            Session["departuredate"] = lLeaveDate.Text;
            Session["lastname"] = Session["lastname"];
            Session["firstname"] = Session["firstname"];
            Session["requests"] = lRequests.Text;
            Session["phone"] = lPhone.Text;
            Session["email"] = lEmail.Text; 
            Response.Redirect("~/Reservations.aspx");
        }
    }
}