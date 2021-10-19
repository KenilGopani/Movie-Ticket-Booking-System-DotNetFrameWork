<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="editMovie.aspx.cs" Inherits="MovieTicketBooking.admin.editMovie" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    Edit Movie | Admin
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Style">
</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Body">
    <div class="container">
        <!-- <asp:Label ID="Label1" runat="server"></asp:Label> --> 
        <h1 class="my-3">Edit Movie</h1>
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
                    <asp:TextBox ID="Description" runat="server" CssClass="form-control w-50" TextMode="MultiLine" />
                </td>
            </tr>
            <tr>
                <th>Language</th>
                <td>
                    <asp:CheckBoxList ID="Language" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="4" CellPadding="3">
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>Spanish</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <th>Category</th>
                <td>
                    <asp:CheckBoxList ID="Category" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="4" CellPadding="3">
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Adventure</asp:ListItem>
                        <asp:ListItem>Sci-Fi</asp:ListItem>
                        <asp:ListItem>Drama</asp:ListItem>
                        <asp:ListItem>Adult</asp:ListItem>
                        <asp:ListItem>Fantasy</asp:ListItem>
                        <asp:ListItem>Thriller</asp:ListItem>
                        <asp:ListItem>Crime</asp:ListItem>
                        <asp:ListItem>Animation</asp:ListItem>
                        <asp:ListItem>Natural-Disaster</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <td>
                    <asp:Button ID="EditMovie" runat="server" CssClass="btn btn-primary" Text="Edit Movie" OnClick="EditMovie_Click" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
