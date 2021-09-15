﻿<%@ Page Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="MovieTicketBooking.Sign_In" %>

<asp:Content runat="server" ContentPlaceHolderID="Title">
    SignIn
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="Body">
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
                    <asp:Button runat="server" ID="SignIn" Text="Sign-in" CssClass="btn btn-primary w-100 mb-3" OnClick="SignIn_Click" />
                    <asp:HyperLink runat="server" ID="ForgotPass" CssClass="mb-3 d-block text-center">Forgot Password?</asp:HyperLink>
                    <asp:HyperLink runat="server" CssClass="d-block text-center mb-3" NavigateUrl="~/signUp.aspx">New Here?</asp:HyperLink>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
