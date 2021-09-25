<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="bookShow.aspx.cs" Inherits="MovieTicketBooking.bookShow" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Book Show
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
    <style>
        ,my input {
            color: red;
            margin: 300px;
        }

        .my input[type=radio] {
            border: 0px;
            width: 50%;
            height: 2em;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <h2 class="my-3">The Red Notice</h2>
        <hr class="text-primary" />

        <asp:Panel ID="SelectDate" runat="server" CssClass="my-4">
            <asp:RadioButtonList ID="Dates" runat="server" RepeatDirection="Horizontal"></asp:RadioButtonList>
        </asp:Panel>

        <asp:Panel ID="SelectLanguage" runat="server" CssClass="">
            <asp:RadioButtonList ID="Languages" runat="server" CssClass=""></asp:RadioButtonList>
        <asp:Button ID="Next" runat="server" CssClass="btn btn-primary my-3" Text="Next" OnClick="Next_Click" />
        </asp:Panel>

        <asp:Panel ID="SelectShow" runat="server" Visible="False">
            <asp:RadioButtonList ID="Shows" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Shows_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList>
        </asp:Panel>

        <asp:Panel ID="SelectSeat" runat="server" Visible="False">
            <asp:CheckBoxList ID="Seats" runat="server" RepeatColumns="10" RepeatDirection="Horizontal"></asp:CheckBoxList>
        <asp:Button ID="BookTickets" runat="server" CssClass="btn btn-primary my-3" Text="Book Tickets" OnClick="BookTickets_Click" />
        
        </asp:Panel>
    </div>
</asp:Content>
