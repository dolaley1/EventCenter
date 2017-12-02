<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Event_Center.Checkout"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceHolder">
<style type="text/css">
        body {
            background-image: url('https://images.freecreatives.com/wp-content/uploads/2016/05/Awesome-Gradient-Background-.jpg');
        }
    </style>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            width: 253px;
        }
        .auto-style3 {
            width: 253px;
        }
    </style>

</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainPlaceHolder">

    <div class="col-sm-3" style="background-color: yellow">
        <br /><br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Room Name: "></asp:Label>
        <asp:Label ID="lRoom" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Customer Name: "></asp:Label>
        <asp:Label ID="lCustomer" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Arrival Date: "></asp:Label>
        <asp:Label ID="lArrivalDate" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Departure Date: "></asp:Label>
        <asp:Label ID="lLeaveDate" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Price: $ "></asp:Label>
        <asp:Label ID="lPrice" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Email: "></asp:Label>
        <asp:Label ID="lEmail" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Phone Number: "></asp:Label>
        <asp:Label ID="lPhone" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Special Requests: "></asp:Label>
        <asp:Label ID="lRequests" runat="server" Text=""></asp:Label>
        
    </div>
    <div class="col-sm-3">
        <br />
        <asp:Button ID="bPlaceReservation" runat="server" Text="Place Reservation" OnClick="bPlaceReservation_Click" />
       &nbsp &nbsp 
        <asp:Button ID="bEdit" runat="server" Text="Edit" OnClick="bEdit_Click" />
    </div>
   
    
    
    





    <asp:Label ID="lblOrder" runat="server" BackColor="Blue" ForeColor="White" Text="Your reservation has been sent. We will contact you within 48 hours." Visible="False"></asp:Label>
   
    
    
    





</asp:Content>