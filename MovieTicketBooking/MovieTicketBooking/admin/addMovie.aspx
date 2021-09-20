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
                <th>Duration</th>
                <td>
                    <asp:Textbox ID="Duration" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
             <tr>
                <th>Description</th>
                <td>
                    <asp:Textbox ID="Description" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
            <tr>
                <th>Language</th>
                <td>
                    <asp:DropDownList ID="Language" runat="server" CssClass="form-select w-50">
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th>Category</th>
                <td>
                    <asp:CheckBoxList ID="Category" runat="server" >
                        <asp:ListItem>Comedy</asp:ListItem>
                        <asp:ListItem>Action</asp:ListItem>
                        <asp:ListItem>Drama</asp:ListItem>
                        <asp:ListItem>Sci-Fi</asp:ListItem>
                        <asp:ListItem>Thriller</asp:ListItem>
                        <asp:ListItem>Crime</asp:ListItem>
                        <asp:ListItem>Fantasy</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <th>Poster</th>
                <td>
                    <asp:FileUpload ID="Poster" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
            <tr>
                <th>Poster 2</th>
                <td>
                    <asp:FileUpload ID="Poster2" runat="server" CssClass="form-control w-50"/>
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
