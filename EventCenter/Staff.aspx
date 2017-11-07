<%@ Page Title="Staff" Language="C#" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Event_Center.Staf" MasterPageFile="~/TheRightPlace.Master" ClientIDMode="Static" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="headPlaceHolder">
    <title> Staff | The Right Place</title>
    <style type="text/css">
        .auto-style1 {
            width: 404px;
        }
    </style>
</asp:Content>

<asp:Content ID="MainPlaceHolder" ContentPlaceHolderID="MainPlaceHolder" runat="server">

    <div class="col-sm-1"></div>
    <br />
    <div class="col-sm-10">
        <p>
            Here at The Right Place we take pride in selecting staff with diverse backgrounds. 
            Each staff member is put through a strenuous interviewing process and picked based on the relevance of their qualifications.
            We garuntee that if you choose us, you will be in great hands!
        
        </p>
    </div>
    <div class="col-sm-1"></div>
    <div style="text-align: center">
        <table class="nav-justified">
            <tr>
                <!-- Add Custom Css or bootsrap for styling to all elements
                Add background colors etc.-->
                <td class="auto-style1">
                    <br />
                    <br />
                    Staff Name<br />
                    Short discription<br />
                    <br />
                </td>
                <td>staff img</td>

            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    <br />
                    staff name<br />
                    short description<br />
                    <br />
                </td>
                <td>staff img</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    <br />
                    staff name<br />
                    short description<br />
                    <br />
                </td>
                <td>staff img</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    <br />
                    staff name<br />
                    short description<br />
                    <br />
                </td>
                <td>staff img</td>
            </tr>
        </table>

    </div>

</asp:Content>






