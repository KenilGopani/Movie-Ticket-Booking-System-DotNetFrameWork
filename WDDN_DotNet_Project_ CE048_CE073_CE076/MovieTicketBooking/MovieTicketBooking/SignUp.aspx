<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="MovieTicketBooking.Sign_Up" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous" />
</head>
<body>
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
                    <asp:Button runat="server" CssClass="btn btn-primary w-100 mt-3 " ID="SignUp" Text="Sign-up" OnClick="SignUp_Click" />
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</body>

</html>

