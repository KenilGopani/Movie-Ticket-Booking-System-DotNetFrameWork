<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.Master" AutoEventWireup="true" CodeBehind="addShow.aspx.cs" Inherits="MovieTicketBooking.admin.addShow" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    Add Show | Admin
</asp:Content>

<asp:Content ContentPlaceHolderID="Style" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <h1 class="my-3">Add Show</h1>
    <hr class="text-primary"/>
    <form id="form1" runat="server">
        <table class="table table-borderless my-3">
            <tr>
                <th>Movie</th>
                <td>
                    <asp:DropDownList Id="aMovie" runat="server" CssClass="form-select w-50" AutoPostBack="True" OnSelectedIndexChanged="aMovie_SelectedIndexChanged">
                        <asp:ListItem>Select Movie</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th>Start Date</th>
                <td>
                    <asp:TextBox ID="StartDate" runat="server" TextMode="Date" CssClass="form-control w-50"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <th>End Date</th>
                <td>
                    <asp:TextBox ID="EndDate" runat="server" TextMode="Date" CssClass="form-control w-50"/>
                </td>
            </tr>
             <tr>
                <th>Price</th>
                <td>
                    <asp:TextBox ID="Price" runat="server" CssClass="form-control w-50"/>
                </td>
            </tr>
            <tr>
                <th>Time</th>
                <td>
                    <asp:CheckBoxList ID="Time" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="4" CellPadding="3">
                        <asp:ListItem>&nbsp;9:00 AM&nbsp;&nbsp;</asp:ListItem>
                        <asp:ListItem>&nbsp;12:00 PM&nbsp;&nbsp;</asp:ListItem>
                        <asp:ListItem>&nbsp;3:00 PM&nbsp;&nbsp;</asp:ListItem>
                        <asp:ListItem>&nbsp;6:00 PM&nbsp;&nbsp;</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <th> Language</th>
                <td>
                    <asp:DropDownList ID="Language" runat="server" CssClass="form-select w-50">
                        <asp:ListItem>Select Language</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <th>&nbsp;</th>
                <td>
                    <asp:Button ID="AddShow" runat="server" CssClass="btn btn-primary" Text="Add Show" OnClick="AddShow_Click" />
                </td>
            </tr>
        </table>

    </form>
</asp:Content>
