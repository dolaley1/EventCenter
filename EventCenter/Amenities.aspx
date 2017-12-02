<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Amenities.aspx.cs" Inherits="Event_Center.Amenities"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
<style type="text/css">
        body {
            background-image: url('https://images.freecreatives.com/wp-content/uploads/2016/05/Awesome-Gradient-Background-.jpg');
        }
    </style>
    
    <title> Amenities | The Right Place 
    </title>

</asp:Content>

<asp:Content ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <h2 style="text-align: center"> 
       Enjoy Our Amenities!
    </h2>
    <%--Pictures and descriptions of amenities--%>
    <div class="row">
        <div class="col-sm-3">
            <p style="text-align:center">Courtyard</p>
            <img src="Images/courtyard.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We have an outdoor courtyard located right next to the ballroom for larger events and outdoor activities. </figcaption>
        </div>
        <div class="col-sm-3">
           <p style="text-align:center">Dressing Room</p> 
            <img src="Images/mp_room.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We offer a small multipurpose room that provide a place for you to change. 
                Whether it be a wedding or a musical, our room comes with everything you need to make
                a comfortable outfit change. 
            </figcaption>
        </div>
        <div class="col-sm-3">
            <p style="text-align:center">Parking </p>
            <img src="Images/parking.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We offer ample parking to house any capacity of guests. </figcaption>
        </div>
        <div class="col-sm-3">
            <p style="text-align:center">Catering </p>
            <img src="Images/catering.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We offer on-site catering if you would like to feed your guests at your event! </figcaption>
        </div>
    </div>
    <br />

</asp:Content>
