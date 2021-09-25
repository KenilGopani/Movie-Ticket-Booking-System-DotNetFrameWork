<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="bookShow.aspx.cs" Inherits="MovieTicketBooking.bookShow" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Book Show
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <h2 class="my-3">The Red Notice</h2>
        <hr class="text-primary" />
        <asp:Panel ID="SelectDate" runat="server" CssClass="my-4">
            <asp:RadioButtonList ID="Dates" runat="server"></asp:RadioButtonList>
        </asp:Panel>
        <asp:Panel ID="SelectLanguage" runat="server" CssClass="">
            <asp:RadioButtonList ID="Languages" runat="server"></asp:RadioButtonList>
        </asp:Panel>
        <asp:Panel ID="SelectSeat" runat="server" CssClass="w-100 h-100" Visible="False">
            <asp:RadioButtonList ID="Shows" runat="server"></asp:RadioButtonList>
            <asp:CheckBoxList ID="Seats" runat="server" RepeatColumns="10" RepeatDirection="Horizontal"></asp:CheckBoxList>

        </asp:Panel>
        <asp:Button ID="Next" runat="server" CssClass="btn btn-primary my-3" Text="Next" OnClick="Next_Click" />
    </div>
</asp:Content>
