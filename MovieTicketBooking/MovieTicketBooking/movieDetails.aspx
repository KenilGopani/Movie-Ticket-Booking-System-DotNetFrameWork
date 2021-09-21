<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="movieDetails.aspx.cs" Inherits="MovieTicketBooking.movieDetails" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Details
</asp:Content>
<asp:Content ContentPlaceHolderID="Style" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <asp:PlaceHolder ID="Details" runat="server"></asp:PlaceHolder>
</asp:Content>
