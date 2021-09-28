<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="allBookings.aspx.cs" Inherits="MovieTicketBooking.admin.allBookings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">

    <asp:SqlDataSource ID="ForBookings" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDB %>" SelectCommand="SELECT Bookings.Id, Bookings.BDate, Movies.Title, Shows.Time, Shows.Price, Shows.Language, Bookings.SeatNo, Users.Email, Users.FirstName, Users.LastName FROM Bookings INNER JOIN Shows ON Bookings.Show_Id = Shows.Id INNER JOIN Movies ON Shows.Movie_Id = Movies.Id INNER JOIN Users ON Bookings.User_Id = Users.Id"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" CssClass="w-100" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="ForBookings" ForeColor="Black" GridLines="Vertical" AllowSorting="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="BDate" HeaderText="BDate" SortExpression="BDate" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
            <asp:BoundField DataField="SeatNo" HeaderText="SeatNo" SortExpression="SeatNo" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

</asp:Content>
