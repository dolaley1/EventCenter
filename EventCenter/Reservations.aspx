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
        <h1>Reserve A Room</h1>
    </div>
    <br /><br />
    <div class="col-sm-3" style="padding: 0 0 0 50px">
        <asp:DropDownList ID="ddlReservation" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        <!--Insert SQL data source-->
    </div>
    <div class="col-sm-3" style="padding: 0 0 0 50px">
        <asp:Image ID="Image1" runat="server" Height="223px" ImageUrl="~/Img/noselection.png" Width="278px" />
        <!--Insert SQL data source-->
    </div>

</asp:Content>