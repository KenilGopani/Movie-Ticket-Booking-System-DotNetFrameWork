<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="bookShow.aspx.cs" Inherits="MovieTicketBooking.bookShow" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Book Show
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
    <style>
        input[type="radio"], input[type="checkbox"] {
            visibility: hidden;
            height: 0;
            width: 0;
        }

        .myclass label {
            vertical-align: middle;
            text-align: center;
            cursor: pointer;
            background-color: #454545;
            color: white;
            padding: 5px 10px;
            margin: 3px 3px;
            border-radius: 3px;
        }

        input[type="radio"]:checked + label, input[type="checkbox"]:checked + label {
            background-color: rgb(12, 104, 238);
        }

        input[type="checkbox"]:disabled + label {
            background-color: #a1a1a1;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <h2 class="my-3"><%=Session["Title"].ToString() %></h2>
        <h4>
            <%if (Session["selectedDate"] != null)
                { %>

            <span class="badge bg-dark"><%=Session["selectedDate"].ToString() %></span>
            <%}%>

            <%if (Session["selectedLanguage"] != null)
                { %>

            <span class="badge bg-dark"><%=Session["selectedLanguage"].ToString() %></span>
            <%}%>
        </h4>
        <hr class="text-primary" />

        <asp:Panel ID="SelectDate" runat="server" CssClass="my-4">
            <h4>Select Date</h4>
            <asp:RadioButtonList ID="Dates" runat="server" CssClass="myclass" RepeatDirection="Horizontal"></asp:RadioButtonList>
        </asp:Panel>


        <asp:Panel ID="SelectLanguage" runat="server" CssClass="my-4">
            <hr class="text-primary" />
            <h4>Select Language</h4>
            <asp:RadioButtonList ID="Languages" runat="server" CssClass="myclass" RepeatDirection="Horizontal"></asp:RadioButtonList>
            <asp:Button ID="Next" runat="server" CssClass="btn btn-primary my-4" Text="Next" OnClick="Next_Click" />
        </asp:Panel>

        <div class="row">
            <div class="col-6">
                <asp:Panel ID="SelectShow" runat="server" Visible="False" CssClass="d-flex justify-content-center">
                    <div class="">
                        <asp:Button ID="Back" runat="server" CssClass="btn btn-primary my-3" Text="Back" OnClick="Back_Click" />
                        <asp:RadioButtonList ID="Shows" runat="server" CssClass="myclass" OnSelectedIndexChanged="Shows_SelectedIndexChanged" AutoPostBack="True" RepeatDirection="Horizontal"></asp:RadioButtonList>
                    </div>
                </asp:Panel>
            </div>

            <div class="col-6">
                <asp:Panel ID="SelectSeat" runat="server" Visible="False" CssClass="">
                    <div class="d-flex justify-content-center mb-2">
                        <asp:Label ID="PriceDisp" runat="server" Font-Bold="False" ForeColor="#3333FF" Font-Size="Larger"></asp:Label><br />
                    </div>
                    <div class="d-flex justify-content-center">
                        <asp:CheckBoxList ID="Seats" runat="server" CssClass="myclass" RepeatColumns="10" RepeatDirection="Horizontal" ></asp:CheckBoxList>
                    </div>
                    <div class="d-flex justify-content-center">
                            <asp:Button ID="BookTickets" runat="server" Text="Book Tickets" CssClass="btn btn-danger" OnClick="BookTickets_Click" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
