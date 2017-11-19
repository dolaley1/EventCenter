<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Event_Center.Checkout"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceHolder">

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

    <div class="col-sm-3">
        <br /><br />
        <asp:Label ID="lRoom" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lCustomer" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lArrivalDate" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lLeaveDate" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lPrice" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lEmail" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lPhone" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="lRequests" runat="server" Text=""></asp:Label>
        
    </div>
    <div class="col-sm-3">
        <br />
        <asp:Button ID="bPlaceReservation" runat="server" Text="Place Reservation" />
       &nbsp &nbsp 
        <asp:Button ID="bEdit" runat="server" Text="Edit" OnClick="bEdit_Click" />
    </div>
   
    
    
    





</asp:Content>