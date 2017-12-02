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
            if (ddlReservation.SelectedIndex == 0)
            {
                lblPrice.Text = "100";
            }
            else if (ddlReservation.SelectedIndex == 1)
            { lblPrice.Text = "200"; }
            else if (ddlReservation.SelectedIndex == 2)
            { lblPrice.Text = "400"; }
            else if (ddlReservation.SelectedIndex == 3)
            { lblPrice.Text = "1000"; }
            else if (ddlReservation.SelectedIndex == 4)
            { lblPrice.Text = "2000"; }
            else if (ddlReservation.SelectedIndex == 5)
            { lblPrice.Text = "1000"; }
            else if (ddlReservation.SelectedIndex == 6)
            { lblPrice.Text = "25"; }
            else if (ddlReservation.SelectedIndex == 7)
            { lblPrice.Text = "0"; }
            else if (ddlReservation.SelectedIndex == 8)
            { lblPrice.Text = "0"; }

            if (!IsPostBack)

            { 

                if (Session["room"] == null)
                {ddlReservation.SelectedIndex = 8;
                } 
                
                else
                {
                    ddlReservation.SelectedValue = Session["room"].ToString();
                    ddlReservation.DataBind();
                    if (Session["arrivaldate"] != null)
                        txtArrivalDate.Text = Session["arrivaldate"].ToString();
                    if (Session["departuredate"] != null)
                        txtDepartureDate.Text = Session["departuredate"].ToString();
                    if (Session["lastname"] != null)
                        txtLastName.Text = Session["lastname"].ToString();
                    if (Session["firstname"] != null)
                        txtFirstName.Text = Session["firstname"].ToString();
                    if (Session["requests"] != null)
                        txtSpecialRequests.Text = Session["requests"].ToString();
                    if (Session["phone"] != null)
                        txtPhone.Text = Session["phone"].ToString();
                    if (Session["email"] != null)
                        txtEmail.Text = Session["email"].ToString();
                }


            }


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
                DateTime leaveDate = Convert.ToDateTime(txtDepartureDate.Text);
                DateTime startDate = Convert.ToDateTime(txtArrivalDate.Text);
                Session["room"] = ddlReservation.SelectedIndex;
                Session["arrivaldate"] = txtArrivalDate.Text;
                Session["departuredate"] = txtDepartureDate.Text;
                Session["lastname"] = txtLastName.Text;
                Session["firstname"] = txtFirstName.Text;
                Session["requests"] = txtSpecialRequests.Text;
                Session["phone"] = txtPhone.Text;
                Session["email"] = txtEmail.Text;
                Session["price"] = lblPrice.Text;
                Session["numDays"] = (leaveDate - startDate).TotalDays;
                Response.Redirect("~/Checkout.aspx");
            }



        }
    }

}
