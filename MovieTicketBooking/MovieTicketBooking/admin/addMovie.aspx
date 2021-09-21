﻿<%@ Page Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="addMovie.aspx.cs" Inherits="MovieTicketBooking.admin.addMovie" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    Add Movie | Admin
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Style">
</asp:Content>


<asp:Content runat="server" ContentPlaceHolderID="Body">
    <h1 class="my-3">Add Movie</h1>
    <hr class="text-primary"/>
    <form id="form1" runat="server">
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
                   <asp:CheckBoxList ID="Language" runat="server" CellPadding="3">
                        <asp:ListItem>&nbsp;Hindi</asp:ListItem>
                        <asp:ListItem>&nbsp;English</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <th>Category</th>
                <td>
                    <asp:CheckBoxList ID="Category" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="4" CellPadding="3">
                        <asp:ListItem>&nbsp;Comedy</asp:ListItem>
                        <asp:ListItem>&nbsp;Action</asp:ListItem>
                        <asp:ListItem>&nbsp;Drama</asp:ListItem>
                        <asp:ListItem>&nbsp;Sci-Fi</asp:ListItem>
                        <asp:ListItem>&nbsp;Thriller</asp:ListItem>
                        <asp:ListItem>&nbsp;Crime</asp:ListItem>
                        <asp:ListItem>&nbsp;Fantasy</asp:ListItem>
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
                <th>Full Poster</th>
                <td>
                    <asp:FileUpload ID="FullPoster" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <td>
                    <asp:Button ID="AddMovie" runat="server" CssClass="btn btn-primary" OnClick="AddMovie_Click" Text="Add Movie" />
                </td>
            </tr>
        </table>

    </form>
</asp:Content>
