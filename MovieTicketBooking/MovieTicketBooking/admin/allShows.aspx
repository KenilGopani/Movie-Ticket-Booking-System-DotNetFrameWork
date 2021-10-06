<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="allShows.aspx.cs" Inherits="MovieTicketBooking.admin.allShows" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    All Shows | Admin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Style" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Body" runat="server">

    <asp:SqlDataSource ID="ForShows" runat="server" ConnectionString="<%$ ConnectionStrings:MovieDB %>" SelectCommand="SELECT Shows.Id, Shows.StartDate, Shows.EndDate, Shows.Time, Shows.Price, Shows.Language, Movies.Title, Movies.ReleaseDate FROM Shows INNER JOIN Movies ON Shows.Movie_Id = Movies.Id"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CssClass="container my-3 table" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ForShows" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="Id" ForeColor="Black" ShowHeaderWhenEmpty="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Language" HeaderText="Language" SortExpression="Language" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="ReleaseDate" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BorderStyle="Outset" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

</asp:Content>
