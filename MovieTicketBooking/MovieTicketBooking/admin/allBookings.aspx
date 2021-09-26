<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="allBookings.aspx.cs" Inherits="MovieTicketBooking.admin.allBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">

    <asp:SqlDataSource ID="ForBookings" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDB %>" SelectCommand="SELECT * FROM [Bookings]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="ForBookings" ForeColor="Black" GridLines="Horizontal" Height="228px" Width="1229px">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
            <asp:BoundField DataField="SeatNo" HeaderText="SeatNo" SortExpression="SeatNo" />
            <asp:BoundField DataField="Show_Id" HeaderText="Show_Id" SortExpression="Show_Id" />
            <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</asp:Content>
