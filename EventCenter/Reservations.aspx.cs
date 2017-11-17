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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Checkout.aspx");
        }

        protected void ddlReservation_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataView myTable = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            myTable.RowFilter = $"CategoryID = {ddlReservation.SelectedValue}";
            DataRowView row = myTable[0];
            string strname1 = row["ImgFile"].ToString();
            Image1.ImageUrl = "~/Img/" + strname1;
        }
    }

}
