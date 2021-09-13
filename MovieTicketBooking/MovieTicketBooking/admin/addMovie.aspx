<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addMovie.aspx.cs" Inherits="MovieTicketBooking.admin.addMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Title</td>
                <td>
                    <asp:TextBox ID="Title" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Release Date</td>
                <td>
                    <asp:TextBox ID="ReleaseDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Poster</td>
                <td>
                    <asp:FileUpload ID="Poster" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Add" runat="server" OnClick="Add_Click" Text="Add" />
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
