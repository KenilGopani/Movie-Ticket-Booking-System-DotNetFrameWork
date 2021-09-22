<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="bookShow.aspx.cs" Inherits="MovieTicketBooking.bookShow" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Book Show
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            clip: rect(0,0,0,0);
            pointer-events: none;
            right: 762px;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <h2 class="my-3">The Red Notice</h2>
        <hr class="text-primary" />
        <asp:Panel ID="SelectLanguage" runat="server" CssClass="">
            <div class="border border-1">
                <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style1" Text="Gujarati" GroupName="Language"/>
                <label class="btn btn-outline-success"  for="RadioButton1">Gujarati</label>
                 <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style1" Text="Hindi"/>
                <label class="btn btn-outline-success"  for="RadioButton1">Hindi</label>
            </div>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" CssClass="my-4" Visible="False"></asp:Panel>
    </div>
</asp:Content>
