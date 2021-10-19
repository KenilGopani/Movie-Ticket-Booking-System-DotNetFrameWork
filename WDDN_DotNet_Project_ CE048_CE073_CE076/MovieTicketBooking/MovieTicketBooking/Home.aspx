<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MovieTicketBooking._default" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    Home
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Body">
    <div class="container">
        <div class="row row-cols-1 row-cols-md-4">
            <asp:PlaceHolder ID="Movies" runat="server"></asp:PlaceHolder>
        </div>
    </div>
</asp:Content>

