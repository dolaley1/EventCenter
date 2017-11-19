using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Event_Center
{
    public partial class Reservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ddlReservation_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataView myTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            myTable.RowFilter = $"roomID = {ddlReservation.SelectedValue}";
            DataRowView row = myTable[0];
            string strname1 = row["filename"].ToString();
            Image1.ImageUrl = "~/Images/" + strname1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Session["room"] = ddlReservation.Text;
                Session["arrivaldate"] = txtArrivalDate.Text;
                Session["departuredate"] = txtDepartureDate.Text;
                Session["lastname"] = txtLastName.Text;
                Session["firstname"] = txtFirstName.Text;
                Session["requests"] = txtSpecialRequests.Text;
                Session["phone"] = txtPhone.Text;
                Session["email"] = txtEmail.Text;
                Response.Redirect("~/Checkout.aspx");
            }

        }
    }

}
