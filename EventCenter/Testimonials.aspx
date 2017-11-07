<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testimonials.aspx.cs" 
    Inherits="Event_Center.Testimonials" MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceHolder">


</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainPlaceHolder">

        <div class="row" style="padding: 0 20px 0 20px">
            <br />
            <div class="col-sm-6" style="text-align:center">
               <h3>Past Events</h3>
                <br />
                <!--Figure out how to center img to match text-->
                <img src="photos/Peter2.jpg" class="img-responsive" />
                <p>//Event name | Date</p>
                <br />
                <img src="photos/Peter2.jpg" class="img-responsive" />
                <p>//Event name | Date</p>
                <br />
                <img src="photos/Peter2.jpg" class="img-responsive" />
                <p>//Event name | Date</p>
                </div>
            <div class="col-sm-6" style="text-align:center">               
                    <h3>Testimonials</h3>
                <br />
                <p>//provide testimonial for discription to the left</p>
            </div>
        </div>
</asp:Content>
