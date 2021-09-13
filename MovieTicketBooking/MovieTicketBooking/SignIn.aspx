﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="MovieTicketBooking.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />
    <title>sign-in</title>
</head>
<body>
    <div class="container">
        <div class="row vh-100 d-flex flex-column justify-content-center align-items-center">
            <div class="col-4">
                <form runat="server" class="border rounded-3 p-5 bg-white">
                    <h1 class="text-center mb-4">Sign-in</h1>
                    <div class="mb-3 text-center">
                        <asp:Label runat="server" ID="Error" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox ID="Email" runat="server" CssClass="form-control" placeholder="Email" required="" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Password" required="" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:Button runat="server" ID="Signin" Text="Sign-in" CssClass="btn btn-primary w-100 mb-3" OnClick="SignIn_Click" />
                    <asp:HyperLink runat="server" ID="ForgotPass" CssClass="mb-3 d-block text-center">Forgot Password?</asp:HyperLink>
                    <asp:HyperLink runat="server" CssClass="d-block text-center mb-3" NavigateUrl="~/signUp.aspx">New Here?</asp:HyperLink>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
