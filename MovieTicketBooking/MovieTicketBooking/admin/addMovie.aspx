<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="addMovie.aspx.cs" Inherits="MovieTicketBooking.admin.addMovie" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    Add Movie | Admin
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Style">
    
</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Body">
    <h1 class="my-3">Add Movies</h1>
    <hr/>
    <form id="form1" runat="server">
        <table class="table table-borderless my-5">
            <tr>
                <th>Title</th>
                <td>
                    <asp:TextBox ID="Title" runat="server" CssClass="form-control w-50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Release Date</th>
                <td>
                    <asp:TextBox ID="ReleaseDate" runat="server" TextMode="Date" CssClass="form-control w-50"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>Poster</th>
                <td>
                    <asp:FileUpload ID="Poster" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <td>
                    <asp:Button ID="Add" runat="server" CssClass="btn btn-primary" OnClick="Add_Click" Text="Add" />
                </td>
            </tr>
        </table>

    </form>
</asp:Content>
