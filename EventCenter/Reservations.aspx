<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="Event_Center.Reservations"
    MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content runat="server" ContentPlaceHolderID="headPlaceHolder">
    <style type="text/css">
        body {
            background-image: url('https://images.freecreatives.com/wp-content/uploads/2016/05/Awesome-Gradient-Background-.jpg');
        }
    </style>
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
    <div class="form-group">
        <asp:DropDownList ID="ddlReservation" runat="server" AutoPostBack="true" DataSourceID="SQLDataSource1" DataTextField="name" DataValueField="roomID" OnSelectedIndexChanged="ddlReservation_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:F17_ksdolaleyConnectionString %>" SelectCommand="SELECT * FROM [Rooms]"></asp:SqlDataSource>
        <!--Insert SQL data source-->
    </div>
    <div class="form-group">
        <asp:Image ID="Image1" runat="server"  Height="223px" ImageUrl="~/Images/noimg.jpg" Width="278px" />
        <!--Insert SQL data source-->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:F17_ksdolaleyConnectionString %>" SelectCommand="SELECT * FROM [Images]"></asp:SqlDataSource>
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Price per day: $" BackColor="White" BorderColor="#66FFCC" BorderStyle="Solid" ForeColor="Black"></asp:Label>
        <asp:Label ID="lblPrice" runat="server" BackColor="White" BorderColor="#66FFCC" BorderStyle="Solid" ForeColor="Black"></asp:Label>
        </div>

            <div class="form-group">
                <label class="col-sm-6 control-label">Arrival Date</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtArrivalDate" runat="server" TextMode="DateTime"
                        CssClass="form-control"></asp:TextBox>
                </div>
            </div>
                <div>
                    <asp:RequiredFieldValidator ID="rfvArrivalDate" runat="server"
                        ControlToValidate="txtArrivalDate" Text="Please enter a valid date." CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter a message." ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvArrivalDate" runat="server" Text="Must be a valid date." CssClass="text-danger"
                        Display="Dynamic" ControlToValidate="txtArrivalDate" Type="Date" Operator="DataTypeCheck" ErrorMessage="Please enter a valid date." ForeColor="White"></asp:CompareValidator>
                </div>
    <br />
    <br />
            <div class="form-group">
                <label class="col-sm-6 control-label">Departure Date</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtDepartureDate" runat="server" TextMode="DateTime"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div">
                    <asp:RequiredFieldValidator ID="rfvDepartureDate" runat="server"
                        ControlToValidate="txtDepartureDate" Text="Please enter a valid date." CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter a valid date." ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvDepartureDate" runat="server"
                        ControlToValidate="txtDepartureDate" ControlToCompare="txtArrivalDate" Type="Date"
                        Text="Must be after arrival date" Operator="GreaterThan"
                        Display="Dynamic" CssClass="text-danger" ForeColor="White"></asp:CompareValidator><br />
                </div>
            </div>
    <br />
    <br />

            <h3>Special requests</h3>
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:TextBox ID="txtSpecialRequests" runat="server" TextMode="Multiline"
                        Rows="4" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
    <br />
    <br />
            <h3>Contact information</h3>
            <div class="form-group">
                <label class="col-sm-6 control-label">First Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                        ControlToValidate="txtFirstName" Text="Please enter a first name. " CssClass="text-danger" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </div>
            </div>
    <br />
    <br />
            <div class="form-group">
                <label class="col-sm-6 control-label">Last Name</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                        ControlToValidate="txtLastName" Text="Please enter a last name. " CssClass="text-danger" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                </div>
            </div>
    <br />
    <br />
            <div class="form-group">
                <label class="col-sm-6 control-label">Email address</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail" Text="Please enter an email address." CssClass="text-danger" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail" Text="Must be valid email address"
                        Display="Dynamic" CssClass="text-danger"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="White"></asp:RegularExpressionValidator>
                </div>
                <br />
                <br />

            </div>
            <div class="form-group">
                <label class="col-sm-6 control-label">Telephone number</label>
                <div class="col-sm-6">
                    <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone"
                        CssClass="form-control"></asp:TextBox>
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                        ControlToValidate="txtPhone" Text="Please enter a phone number. " CssClass="text-danger" Display="Dynamic" ForeColor="White"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server"
                        ControlToValidate="txtPhone" Text="Use this format: 999-999-9999"
                        Display="Dynamic" CssClass="text-danger"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" ForeColor="White"></asp:RegularExpressionValidator>
                    
                </div>
                <br />
                <br />
            </div>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" BorderStyle="None" OnClick="Button1_Click" />
</asp:Content>