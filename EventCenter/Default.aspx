﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Event_Center.Home"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content ContentPlaceHolderID="headPlaceHolder" runat="server">
<style type="text/css">
        body {
            background-image: url('https://images.freecreatives.com/wp-content/uploads/2016/05/Awesome-Gradient-Background-.jpg');
        }
    </style>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainPlaceHolder">
    <br />
    <div class="col-sm-12">  
        <p>
        Welcome to The Right Place! We take pride in being an event center that can cater to many needs.
        Please click any of the links above to read about our staff, past events and clients, 
        our various amenities and the room reservation process. 
        </p>
    </div>
    <div class="row">
        <div class="col-sm-6">
            <img src="Images/weddin.png" class="img-responsive" />
        </div>
        <div class="col-sm-6">
            <img src="Images/party.JPG" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-sm-6">
            <img src="Images/Business_presentation.jpg" class="img-responsive" />
        </div>
        <div class="col-sm-6">
            <img src="Images/college_event.jpg" class="img-responsive" />
        </div>
    </div>

</asp:Content>
