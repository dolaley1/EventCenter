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


    <table class="nav-justified">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lRoom" runat="server" Text="" ></asp:Label>lroom</td>
            <td class="auto-style1">
                <asp:Label ID="lCapacity" runat="server" Text=""></asp:Label>lcapacity</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lGuests" runat="server" Text=""></asp:Label>lguests</td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style3"><asp:Label ID="lDate" runat="server" Text="date"></asp:Label>ldate</td>
            <td><asp:Label ID="lPrice" runat="server" Text=""></asp:Label>lprice</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="Place Reservation" /></td>
            <td></td>
        </tr>
    </table>


</asp:Content>