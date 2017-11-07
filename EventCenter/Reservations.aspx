<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="Event_Center.Reservations"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceHolder">
    <title> Reserve a Room | The Right Place</title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content >

<asp:Content runat="server" ContentPlaceHolderID="mainPlaceHolder">
    <div class ="row">
        <h1> Reserve a Room</h1>
    </div>
    



    <table class="nav-justified">
        <tr>
            <td class="auto-style1">Room Description</td>
            <td class="auto-style1">img</td>
            <td class="auto-style1">
                <asp:LinkButton ID="linkAuditorium" runat="server" OnClick="LinkButton1_Click">Dates Available</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Room Descripton</td>
            <td class="auto-style1">img</td>
            <td class="auto-style1">
                <asp:LinkButton ID="linkConferenceRoom" runat="server" OnClick="LinkButton2_Click">Dates Available</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Room Description</td>
            <td class="auto-style1">img</td>
            <td class="auto-style1">
                <asp:LinkButton ID="linkClassRoom" runat="server"  OnClick="LinkButton3_Click">Dates Available</asp:LinkButton>
            </td>
        </tr>
    </table>
    



</asp:Content>