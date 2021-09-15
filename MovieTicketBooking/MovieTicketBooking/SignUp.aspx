<%@ Page Language="C#"  MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="MovieTicketBooking.Sign_Up" %>
<asp:Content runat="server" ContentPlaceHolderID="Title">
    SignUp
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="Body">

    <div class="container">
        <div class="row vh-100 d-flex flex-column justify-content-center align-items-center">
            <div class="col-4">
                <form runat="server" class="border rounded-3 p-5 bg-white">
                    <h1 class="text-center mb-4">Sign-up</h1>
                    <div class="mb-3 text-center">
                        <asp:Label runat="server" ID="Error" ForeColor="Red"></asp:Label>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="FirstName" placeholder="First Name" required=""></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="LastName" placeholder="Last Name" required=""></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="Email" placeholder="Email" TextMode="Email" required=""></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="MobileNum" placeholder="Mobile Number" MaxLength="10" MinLength="10" TextMode="Phone" required=""></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="Password" placeholder="Password" TextMode="Password" required=""></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <asp:TextBox runat="server" CssClass="form-control" ID="CPassword" placeholder="Confirm Password" TextMode="Password" required=""></asp:TextBox>
                    </div>
                    <button type="reset" class="btn btn-primary w-100 mb-3" id="Reset">Reset</button>
                    <asp:Button runat="server" CssClass="btn btn-primary w-100 mb-3" ID="SignUp" Text="Sign-up" OnClick="SignUp_Click" />
                </form>
            </div>
        </div>
    </div>

</asp:Content>
