<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="movieDetails.aspx.cs" Inherits="MovieTicketBooking.movieDetails" %>

<asp:Content ContentPlaceHolderID="Title" runat="server">
    <asp:PlaceHolder ID="title" runat="server"></asp:PlaceHolder>
</asp:Content>

<asp:Content ContentPlaceHolderID="Style" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="Body" runat="server">
    <asp:PlaceHolder ID="Details" runat="server"></asp:PlaceHolder>

    <div class="modal fade" id="DeleteMovie" tabindex="-1" aria-labelledby="DeleteMovieLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="DeleteMovieLabel">Confirmation</h5>
                </div>
                <div class="modal-body">
                    Are You sure??
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="Delete_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

