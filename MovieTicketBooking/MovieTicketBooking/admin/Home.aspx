<%@ Page Language="C#"  MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MovieTicketBooking.admin.Home" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
   Home | Admin
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Body">
    <asp:HyperLink runat="server" NavigateUrl="~/admin/addMovie.aspx">Add Movie</asp:HyperLink>





</asp:Content>