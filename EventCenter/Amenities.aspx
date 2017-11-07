<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Amenities.aspx.cs" Inherits="Event_Center.Amenities"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
    <title> Amenities | The Right Place 
    </title>

</asp:Content>

<asp:Content ContentPlaceHolderID="MainPlaceHolder" runat="server">
    <h2 style="text-align: center"> 
       Enjoy Our Amenities!
    </h2>
    <%--Pictures and descriptions of amenities--%>
    <div class="row">
        <div class="col-sm-4">
            <p style="text-align=center">Courtyard</p>
            <img src="Images/courtyard.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We have an outdoor courtyard located right next to the ballroom for larger events and outdoor activities. </figcaption>
        </div>
        <div class="col-sm-4">
            Dressing Room
            <img src="Images/mp_room.jpg" style="border: solid" class="img-responsive" />
            <figcaption> We offer a small multipurpose room that provide a place for you to change. 
                Whether it be a wedding or a musical, our room comes with everything you need to make
                a comfortable outfit change. 
            </figcaption>
        </div>
        <div class="col-sm-4">
            Amenity 3
            <img src="Images/Amnity.jpg" style="border: solid" class="img-responsive" />
            <figcaption> (Description of amenity) </figcaption>
        </div>
    </div>
    <br />

    <div class="row">
        <div class="col-sm-4">
            Amenity 4
            <img src="Images/Amnity.jpg" style="border: solid" class="img-responsive" />
            <figcaption> (Description of amenity) </figcaption>
        </div>
        <div class="col-sm-4">
            Amenity 5
            <img src="Images/Amnity.jpg" style="border: solid" class="img-responsive" />
            <figcaption> (Description of amenity) </figcaption>
        </div>
        <div class="col-sm-4">
            Amenity 6
            <img src="Images/Amnity.jpg" style="border: solid" class="img-responsive" />
            <figcaption> (Description of amenity) </figcaption>
        </div>
    </div>

</asp:Content>
