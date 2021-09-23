<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="addMovie.aspx.cs" Inherits="MovieTicketBooking.admin.addMovie" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    Add Movie | Admin
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Style">
</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Body">
    <h1 class="my-3">Add Movie</h1>
    <hr class="text-primary" />
    <table class="table table-borderless my-3">
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
            <th>Duration</th>
            <td>
                <asp:TextBox ID="Duration" runat="server" CssClass="form-control w-50" />
            </td>
        </tr>
        <tr>
            <th>Description</th>
            <td>
                <asp:TextBox ID="Description" runat="server" CssClass="form-control w-50" />
            </td>
        </tr>
        <tr>
            <th>Language</th>
            <td>
                <asp:CheckBoxList ID="Language" runat="server" CellPadding="3">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <th>Category</th>
            <td>
                <asp:CheckBoxList ID="Category" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="4" CellPadding="3">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <th>Poster</th>
            <td>
                <asp:FileUpload ID="Poster" runat="server" CssClass="form-control w-50" />
            </td>
        </tr>
        <tr>
            <th>Full Poster</th>
            <td>
                <asp:FileUpload ID="FullPoster" runat="server" CssClass="form-control w-50" />
            </td>
        </tr>
        <tr>
            <th>&nbsp;</th>
            <td>
                <asp:Button ID="AddMovie" runat="server" CssClass="btn btn-primary" OnClick="AddMovie_Click" Text="Add Movie" />
            </td>
        </tr>
    </table>

</asp:Content>
