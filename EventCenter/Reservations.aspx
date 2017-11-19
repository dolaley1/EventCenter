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
    <div class="form-group" style="padding: 0 0 0 50px">
        <asp:DropDownList ID="ddlReservation" runat="server" AutoPostBack="true" DataSourceID="SQLDataSource1" DataTextField="name" DataValueField="roomID" OnSelectedIndexChanged="ddlReservation_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F17_ksdolaleyConnectionString %>" SelectCommand="SELECT * FROM [Rooms]"></asp:SqlDataSource>
        <!--Insert SQL data source-->
    </div>
    <div class="form-group" style="padding: 0 0 0 50px">
        <asp:Image ID="Image1" runat="server"  Height="223px" ImageUrl="~/Images/noimg.jpg" Width="278px" />
        <!--Insert SQL data source-->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:F17_ksdolaleyConnectionString %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>
        </div>






            <div class="form-group">
                <label class="col-sm-3 control-label">Arrival Date</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="DateTime"
                        CssClass="form-control"></asp:TextBox>
                </div>
            </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvArrivalDate" runat="server"
                        ControlToValidate="txtArrivalDate" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvArrivalDate" runat="server" Text="Must be a valid date" CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtArrivalDate" Type="Date" Operator="DataTypeCheck">
                    </asp:CompareValidator>
                </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Departure Date</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="DateTime"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvDepartureDate" runat="server"
                        ControlToValidate="txtDepartureDate" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvDepartureDate" runat="server"
                        ControlToValidate="txtDepartureDate" ControlToCompare="txtArrivalDate" Type="Date"
                        Text="Must be after arrival date" Operator="GreaterThan"
                        Display="Dynamic" CssClass="text-danger">
                    </asp:CompareValidator><br />
                </div>
            </div>

            <h3>Special requests</h3>
            <div class="form-group">
                <div class="col-sm-7">
                    <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="Multiline"
                        Rows="4" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <h3>Contact information</h3>
            <div class="form-group">
                <label class="col-sm-3 control-label">First Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                        ControlToValidate="txtFirstName" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Last Name</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                        ControlToValidate="txtLastName" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Email address</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail" Text="Must be valid email address"
                        Display="Dynamic" CssClass="text-danger"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                    </asp:RegularExpressionValidator>
                </div>

            </div>
            <div class="form-group">
                <label class="col-sm-3 control-label">Telephone number</label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-sm-5">
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                        ControlToValidate="txtPhone" Text="*" CssClass="text-danger" Display="Dynamic">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server"
                        ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                        Display="Dynamic" CssClass="text-danger"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">
                    </asp:RegularExpressionValidator>
                    
                </div>
            </div>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" BorderStyle="None" OnClick="Button1_Click" />
</asp:Content>