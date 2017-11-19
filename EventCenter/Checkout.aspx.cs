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
            lRoom.Text = Session["room"].ToString();
            lArrivalDate.Text = Session["arrivaldate"].ToString();
            lLeaveDate.Text = Session["departuredate"].ToString();
            lCustomer.Text = Session["firstname"].ToString() + "" + Session["lastname"].ToString();
            lRequests.Text = Session["requests"].ToString();
            lPhone.Text = Session["phone"].ToString();
            lEmail.Text = Session["email"].ToString();
        }

        protected void bEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Reservations.aspx");
        }
    }
}