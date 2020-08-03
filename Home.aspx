<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap-grid.css" rel="stylesheet" />
    <link href="Content/bootstrap-reboot.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
     <script src="Scripts/jquery-3.2.1.js"></script>
    <script src="Scripts/bootstrap.bundle.js"></script>
    <script src="Scripts/bootstrap.js"></script>
   

    <style>
        body {
     padding-top: 0px !important; 
    padding-bottom: 0px !important;
}
        #ModalSignUp {
            top: 5%;
            right: 19%;
            outline: none;
        }

        .row {
            margin: 6px;
        }

        @import url(https://fonts.googleapis.com/css?family=Open+Sans);

        html {
            height: 100%;
        }

        nav {
            max-width: 100%;
            /*max-width: 960px;*/
           
            margin: 0 auto;
            padding-top: 6px;
            position: absolute;
            z-index: 3;
            width: 100%;
        }

            nav ul {
                text-align: right;
                background: linear-gradient(90deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0.2) 25%, rgba(255, 255, 255, 0.2) 75%, rgba(255, 255, 255, 0) 100%);
                box-shadow: 0 0 25px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
            }

                nav ul li {
                    display: inline-block;
                }

                    nav ul li a {
                        padding: 18px;
                        font-family: "Open Sans";
                        text-transform: uppercase;
                        color: white;
                        /*color: rgba(0, 35, 122, 0.5);*/
                        font-size: 18px;
                        text-decoration: none;
                        display: block;
                    }

                        nav ul li a:hover {
                            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1), inset 0 0 1px rgba(255, 255, 255, 0.6);
                            background: rgba(255, 255, 255, 0.1);
                            color: black;
                            /*color: rgba(0, 35, 122, 0.7);*/
                        }
    </style>

    <title></title>
   

    <script type="text/javascript">
        function showmessage() {
            alert('please enter valid username and password');
            window.location.href = 'Home.aspx'
        }
        function showmessageF() {
            alert('User not exist');
            window.location.href = 'Home.aspx'
        }

        function showmessage2() {
            alert('Please retry with different OTP.');
            window.location.href = 'Forgotpassword.aspx'
        }

    </script>
</head>
<body>
    <div>
        <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <nav>
                <ul>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#ModalSignUp">Signup</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#ModalSignIn">Signin</a>
                    </li>
                    <li>
                        <a href="#">Services</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </nav>
            <%--carousel image view--%>
            <div>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <asp:Image ID="Image" ImageUrl="~/image/affection-black-and-white-blurred-background-936554.jpg" Height="665px"  runat="server" Width="100%" />
                            <div class="carousel-caption d-none d-md-block">
                                <h5>slide 1</h5>
                                <p>content 1</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/bonsai-t2.jpg" Width="100%" Height="665px"/>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>slide 2</h5>
                                <p>content 2</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/sliderimg1.jpg" Width="100%" Height="665px" />
                            <div class="carousel-caption d-none d-md-block">
                                <h5>slide 3</h5>
                                <p>content 3</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>


            <div id="ModalSignIn" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content for sign in-->
                    <div class="modal-content">
                        <div class="modal-header">

                            <h4 class="modal-title">Sign in......</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtusername" CssClass="form-control" placeholder="Email" title="enter email" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtusername" ValidationGroup="v1" ForeColor="Red" ErrorMessage="*user name is required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtpasswordS" CssClass="form-control" placeholder="Password" title="enter password" runat="server" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ValidationGroup="v1" ForeColor="Red" ErrorMessage="*Password name is required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <asp:Button ID="btnSignIn" CssClass="btn btn-primary" runat="server" Text="Sign In" OnClick="btnSignIn_Click" ValidationGroup="v1" />
                                <a href="#" class="btn btn-link" data-toggle="modal" data-target="#ModalForgot">Forgot Password</a>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="ModalForgot" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content for forgot password-->
                    <div class="modal-content">
                        <div class="modal-header">

                            <h4 class="modal-title">Forgot Password</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:TextBox ID="txtUsernameF" CssClass="form-control" placeholder="Email" title="enter email" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="txtOTP" CssClass="form-control" placeholder="Enter OTP" Visible="false" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <asp:Button ID="btnSendOTP" CssClass="btn btn-primary" runat="server" Text="Send OTP" OnClick="btnSendOTP_Click" CausesValidation="false" />
                                <asp:Button ID="btnVerify" CssClass="btn btn-primary" Visible="false" runat="server" Text="Send OTP" CausesValidation="false" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

            <div id="ModalSignUp" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content for sign up-->
                    <div class="modal-content" style="width: 750px; margin: auto;">
                        <div class="modal-header">
                            <h4 class="modal-title">Sign up......</h4>
                        </div>
                        <div class="modal-body">
                            <div class="container">

                                <div class="row">
                                    <div class="col-md-12">
                                        <asp:DropDownList ID="ddlcreateby" CssClass="form-control" runat="server" DataTextField="Created By">
                                            <asp:ListItem Value="0" Selected="False">Created By</asp:ListItem>
                                            <asp:ListItem Value="1">self</asp:ListItem>
                                            <asp:ListItem Value="2">father</asp:ListItem>
                                            <asp:ListItem Value="3">mother</asp:ListItem>
                                            <asp:ListItem Value="4">sister</asp:ListItem>
                                            <asp:ListItem Value="5">brother</asp:ListItem>
                                            <asp:ListItem Value="6">uncle</asp:ListItem>
                                            <asp:ListItem Value="7">other</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ControlToValidate="ddlcreateby" ID="RequiredFieldValidator2" ValidationGroup="v2" ForeColor="Red" ErrorMessage="*Please select a type" InitialValue="0" runat="server" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <asp:TextBox ID="txtfirstname" CssClass="form-control" runat="server" placeholder="First name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter First Name" ValidationGroup="v2" ForeColor="Red" Display="Dynamic" ControlToValidate="txtfirstname"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <asp:TextBox ID="txtmiddlename" CssClass="form-control" runat="server" placeholder="middle name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Middle Name" ForeColor="Red" ValidationGroup="v2" Display="Dynamic" ControlToValidate="txtmiddlename"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-12">
                                        <asp:TextBox ID="txtsurname" CssClass="form-control" runat="server" Text="Patel" Enabled="false"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter Surname Name" ForeColor="Red" ValidationGroup="v2" Display="Dynamic" ControlToValidate="txtsurname"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row" style="margin-top: 10px; margin-bottom: 8px">
                                    <div class="col-lg-2" style="color: black">
                                        Gender :-
                                    </div>
                                    <div class="col-lg-3">
                                        <asp:RadioButtonList ID="rblgender" runat="server" RepeatDirection="Horizontal" ForeColor="Black">
                                            <asp:ListItem Value="1">Male</asp:ListItem>
                                            <asp:ListItem Value="2">Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Select Gender" ForeColor="Red" ValidationGroup="v2" ControlToValidate="rblgender" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-2" style="color: black">
                                        Birthdate :-
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:TextBox ID="txtDate" runat="server" CssClass="form-control datepicker" TextMode="Date"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Select BirthDate" ForeColor="Red" ControlToValidate="txtdate" ValidationGroup="v2" Display="Dynamic"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*Enter Email" ForeColor="Red" ValidationGroup="v2" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="v2" ID="reemail" ControlToValidate="txtemail" ForeColor="Red" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="*Email is not valid" Display="Dynamic"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <asp:TextBox ID="txtmobile1" CssClass="form-control" runat="server" placeholder="Mobile Number" TextMode="Phone" MaxLength="10"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*Enter Mobile Number" ValidationGroup="v2" ForeColor="Red" ControlToValidate="txtmobile1" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="v2" ID="RegularExpressionValidator1" ValidationExpression="[0-9]{10}" ForeColor="Red" ControlToValidate="txtmobile2" runat="server" ErrorMessage="*Mobile number is not valied" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-lg-6">
                                        <asp:TextBox ID="txtmobile2" CssClass="form-control" runat="server" placeholder="Mobile Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*Enter Mobile Number" ValidationGroup="v2" ForeColor="Red" ControlToValidate="txtmobile2" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ValidationGroup="v2" ID="RegularExpressionValidator2" ValidationExpression="[0-9]{10}" ForeColor="Red" ControlToValidate="txtmobile2" runat="server" ErrorMessage="*Mobile number is not valied" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <asp:TextBox ID="txtpassword" CssClass="form-control " runat="server" placeholder="Password" TextMode="Password" ToolTip=""></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*Enter password" ValidationGroup="v2" ForeColor="Red" ControlToValidate="txtpassword" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revpassword" ValidationGroup="v2" ValidationExpression="^.*(?=.{8,})(?=.*[\d])(?=.*[\W]).*$" runat="server" ForeColor="Red" ControlToValidate="txtpassword" ErrorMessage="*contains at least 8 characters,one digit and one special character" Display="Dynamic"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="col-lg-6">
                                        <asp:TextBox ID="txtconformpassword" CssClass="form-control" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*Enter password" ValidationGroup="v2" ForeColor="Red" ControlToValidate="txtconformpassword" Display="Dynamic"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="cvpassword" ValidationGroup="v2" ControlToCompare="txtpassword" ControlToValidate="txtconformpassword" ForeColor="red" runat="server" ErrorMessage="*password must be the same" Display="Dynamic"></asp:CompareValidator>
                                    </div>
                                </div>

                                Add Profile photo :-<asp:FileUpload ID="fuprofileimg" runat="server" CssClass="form-control" /><br />

                                <asp:Button ID="BtnSignUp" CssClass="btn btn-primary" runat="server" Text="Sign Up" ValidationGroup="v2" OnClick="BtnSignUp_Click" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

    </div>
</body>
</html>
