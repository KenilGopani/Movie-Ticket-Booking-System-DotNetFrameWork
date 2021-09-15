<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="addMovie.aspx.cs" Inherits="MovieTicketBooking.admin.addMovie" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    AddMovie
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Style">
    <style type="text/css">
    </style>
</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Body">
    <h1>Add Movies</h1>
    <hr/>
    <form id="form1" runat="server">

        <table class="table table-borderless">
            <tr>
                <td >Title</td>
                <td>
                    <asp:TextBox ID="Title" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Release Date</td>
                <td>
                    <asp:TextBox ID="ReleaseDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td >Poster</td>
                <td>
                    <asp:FileUpload ID="Poster" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add" />
                </td>
            </tr>
        </table>

    </form>
</asp:Content>
