<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Forgot.aspx.cs" Inherits="Forgot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function OTP_Error() {
            alert('Please retry with different OTP.');
            window.location.href = 'Home.aspx'
        }
        function OTP_Success() {
            alert('New password is set for you.');
            window.location.href = 'Home.aspx'
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 align-content-center">
                    <h2>Reset Your <span style="color: forestgreen">Password</span></h2>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:TextBox ID="txtOTP" CssClass="form-control" placeholder="Enter OTP" runat="server"></asp:TextBox>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Enter new password" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-4"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-4">
                    <asp:Button ID="btnCheck" Style="margin-left: 47px;"
                        CssClass="btn btn-outline-info" runat="server" OnClick="btnCheck_Click" Text="Check" />
                    <asp:Button ID="btnPassword" Style="margin-left: 47px;" runat="server" CssClass="btn btn-success" OnClick="btnPassword_Click" Text="Reset" />
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
</asp:Content>

