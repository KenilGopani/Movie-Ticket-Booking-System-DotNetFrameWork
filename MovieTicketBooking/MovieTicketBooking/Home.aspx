<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MovieTicketBooking.Home" %>

<asp:Content runat="server" ContentPlaceHolderID="Body">

    <div class="container-fluid row row-cols-1 row-cols-md-4">
        <asp:PlaceHolder ID="Movies" runat="server"></asp:PlaceHolder>
    </div>

</asp:Content>

