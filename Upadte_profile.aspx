<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Upadte_profile.aspx.cs" Inherits="Upadte_profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .cal{
            position:absolute !important;
            z-index:2 !important;
        }
        .ajax__calendar_container {
    border:1px solid black !important;
    background-color: white !important;
}
        .tt{
            height: 22px;
   
    width: 21px;
    position: relative;
    top: 5px;
        }
        body{
            padding-top:0px !important;
        }
        .form-group {
     margin-bottom: 0rem; 
}
        .fontstyle{
            font-weight: bold;
    font-family: sans-serif;
        }
        .col-sm-4 {
      max-width: 27.333333% !important;
}
        .img-thumbnail {
    padding: 0.25rem;
    background-color: #fff;
    border: 3px groove lightgray;
    border-radius: 4.25rem !important;
    max-width: 100%;
    height: auto;
    /* border-radius: 20px !important; */
}
        .list-group-item {
    position: relative;
    display: block;
    padding: 0.75rem;
    padding-right: 0.4rem;
     margin-bottom: 0px; 
     background-color: #ffffff05 !important; 
     border: none; 
    color: white !important;
    text-align: center;
}
        .list-group-item a{
            color: white;
    text-decoration: none !important;
        }
       .cd3height{
           background-color: red;
    height: 753px;
    
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
        <div class="row">
            <div class="col-md-3 px-1 position-fixed cd3height" style="background-color:#c94c4c" data-spy="affix" data-offset-top="0">
                <!--profile image-->
                <div style="padding: 93px 30px 40px 30px;">
                <asp:Image ID="imgprofileimage" runat="server" ImageUrl="~/image/affection-black-and-white-blurred-background-936554.jpg" CssClass="img-thumbnail rounded" />
                    </div>

                <!--user menus-->
                <div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="#about">ABOUT</a></li>
                        <li class="list-group-item"><a href="#edu">EDUCATION</a></li>
                        <li class="list-group-item"><a href="#EXPECTATIONS">EXPECTATIONS</a></li>
                        <li class="list-group-item"><a href="#horoscope">HOROSCOPE</a></li>
                        
                    </ul>
                </div>
            </div>
            <div class=" col offset-3 col-md-9 " style="background-color:#efeadb">
                <div class="container" >
                    <!--About tab-->
                    <section id="about" style="padding:20px">
                        <div style="width: 100%;background-color: white;margin-bottom: 20px;box-shadow: 10px 10px 10px #a6d5a6;">
                            <div style="padding:10px">
                                <h3><i class="fas fa-info-circle"> Bacis Information</i></h3>
                               
                                <asp:Button ID="btnupdate" runat="server" Height="30px" Width="100px"  Text="Save" OnClick="btnupdate_Click" ></asp:Button>
                                <asp:Button ID="Button4" runat="server" Height="30px" Width="100px"  Text="Cancel" OnClick="Button4_Click" />
                                <br />
                                 <br />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Created For :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="lblcreatedfor" runat="server" class="form-control-plaintext" Text="Farther"></asp:Label>--%>
                                                <asp:TextBox ID="txtCreatedfor" ReadOnly="true" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Name :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label1" runat="server" class="form-control-plaintext" Text="Jay Patel"></asp:Label>--%>
                                                <asp:TextBox ID="txtname" ReadOnly="true"  runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Age :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label2" runat="server" class="form-control-plaintext" Text="25"></asp:Label>--%>
                                                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Birth date:</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label3" runat="server" class="form-control-plaintext" Text="20 dec 2018"></asp:Label>--%>
                                                <asp:TextBox ID="txtbirthdate" runat="server"></asp:TextBox>
                                                <asp:ImageButton ID="ajximgbtn" runat="server" ImageUrl="~/image/tt.png"  CssClass="tt" />
                                                <cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="ajximgbtn" runat="server" TargetControlID="txtbirthdate" Format="dd/MM/yyyy" CssClass="cal"></cc1:CalendarExtender>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Birth Place :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label4" runat="server" class="form-control-plaintext" Text="Timba"></asp:Label>--%>
                                                <asp:TextBox ID="txtbirthplace" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 
                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Drinking:</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label10" runat="server" class="form-control-plaintext" Text="Yss"></asp:Label>--%>
                                                <asp:RadioButtonList ID="rbldrink" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                        <br /> 
                                    </div>
                                    <div class="col-md-6">
                                         <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Height :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label5" runat="server" class="form-control-plaintext" Text="5.6"></asp:Label>--%>
                                                <asp:TextBox ID="txtheight" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Weight :</span>
                                            <div class="col-sm-8">
                                                <%--  <asp:Label ID="Label6" runat="server" class="form-control-plaintext" Text="100Kg"></asp:Label>--%>
                                                <asp:TextBox ID="txtweight" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-4 col-form-label fontstyle" >Physical status:</span>
                                            <div class="col-sm-8">
                                                <%--   <asp:Label ID="Label7" runat="server" class="form-control-plaintext" Text="Normal"></asp:Label>--%>
                                                <asp:TextBox ID="txtphysicalstatus" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-4 col-form-label fontstyle" >Marital Status :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label8" runat="server" class="form-control-plaintext" Text="Single"></asp:Label>--%>
                                                <asp:TextBox ID="txtmaritalstatus" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                                        <div class="form-group row">
                                            <span class="col-sm-4 col-form-label fontstyle" >Eating Habits :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label9" runat="server" class="form-control-plaintext" Text="Vegan"></asp:Label>--%>
                                                <asp:TextBox ID="txteatinghabits" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 
                                        <div class="form-group row">
                                            <span class="col-sm-3 col-form-label fontstyle" >Smoking  :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label11" runat="server" class="form-control-plaintext" Text="No"></asp:Label>--%>
                                                <asp:RadioButtonList ID="rblsoke" runat="server" RepeatDirection="Horizontal">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </div>
                                        <br /> 

                                    </div>

                                </div>
                            </div>
                        </div>

                        <!--contacy div-->
                        <div style="width: 100%;background-color: white;margin-bottom: 20px ;padding:10px;box-shadow: 10px 10px 10px #a6d5a6;">
                           <h3 style="margin-bottom:10px"><i class="fas fa-address-book"> Contact Details</i></h3>
                             <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Mobile No. :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label12" runat="server" class="form-control-plaintext" Text="123456789"></asp:Label>--%>
                                                <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                             <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Parent No. :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label13" runat="server" class="form-control-plaintext" Text="987654321"></asp:Label>--%>
                                                <asp:TextBox ID="txtparentno" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                             <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Email_ID :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label14" runat="server" class="form-control-plaintext" Text="iiet@gmail.com"></asp:Label>--%>
                                                <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                             <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Address :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label15" runat="server" class="form-control-plaintext" Text="44,gokul dham,dharmaj"></asp:Label>--%>
                                                <asp:TextBox ID="address" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 
                        </div>
                    </section>

                    <!--Edu tab-->
                    <section id="edu" style="padding:20px">
                        <div style="width: 100%;background-color: white;margin-bottom: 20px; padding:10px;box-shadow: 10px 10px 10px #a6d5a6;" >
                            <h3><i class="fas fa-graduation-cap"> Education</i></h3>
                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Qualification :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label20" runat="server" class="form-control-plaintext" Text="Computer engg."></asp:Label>--%>
                                                <asp:TextBox ID="txtqualification" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Employed as :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label16" runat="server" class="form-control-plaintext" Text="Web Designer"></asp:Label>--%>
                                                <asp:TextBox ID="txtemployed" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 
                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Field :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label17" runat="server" class="form-control-plaintext" Text="IT feild"></asp:Label>--%>
                                                <asp:TextBox ID="txtfield" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Annual Income :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label18" runat="server" class="form-control-plaintext" Text="100000"></asp:Label>--%>
                                                <asp:TextBox ID="txtannualincome" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                        </div>
                    </section>

                    <!--EXPECTATIONS tab-->
                    <section id="EXPECTATIONS" style="padding:20px">
                        <div style="width: 100%;background-color: white;margin-bottom: 20px; padding:10px ;box-shadow: 10px 10px 10px #a6d5a6;">
                            <h3><i class="fas fa-align-left"> Expectaions</i></h3>
                            <p>
                                In the case of uncertainty, expectation is what is considered the most likely to happen. An expectation, which is a belief that is centered on the future, may or may not be realistic. A less advantageous result gives rise to the emotion of disappointment. If something happens that is not at all expected, it is a surprise. An expectation about the behavior or performance of another person, expressed to that person, may have the nature of a strong request, or an order; this kind of expectation is called a social norm. The degree to which something is expected to be true can be expressed using fuzzy logic.
                            </p>
                         </div>
                    </section>

                    <!--Horoscope-->
                    <section id="horoscope" style="padding:20px">
                        <div style="width: 100%;background-color: white;margin-bottom: 20px; padding:10px;box-shadow: 10px 10px 10px #a6d5a6;">
                            <h3><i class="fas fa-stroopwafel"> Horoscope</i></h3>
                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Birth Date :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label19" runat="server" class="form-control-plaintext" Text="20 Dec 2018"></asp:Label>--%>
                                                <asp:TextBox ID="txtbirthdate2" runat="server"></asp:TextBox>
                                                <asp:ImageButton ID="ajximgbtn2" runat="server" ImageUrl="~/image/tt.png" CssClass="tt" />
                                                <cc1:CalendarExtender ID="CalendarExtender2" PopupButtonID="ajximgbtn2" runat="server" TargetControlID="txtbirthdate2" Format="dd/MM/yyyy" CssClass="cal"></cc1:CalendarExtender>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Birth Place :</span>
                                            <div class="col-sm-8">
                                                <%--  <asp:Label ID="Label21" runat="server" class="form-control-plaintext" Text="Timba"></asp:Label>--%>
                                                <asp:TextBox ID="txtbirthplace1" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Birth Time :</span>
                                            <div class="col-sm-8">
                                                <%--<asp:Label ID="Label22" runat="server" class="form-control-plaintext" Text="11:00 pm"></asp:Label>--%>
                                                <asp:TextBox ID="txtbirthtime" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Zodiac :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label23" runat="server" class="form-control-plaintext" Text="Leo"></asp:Label>--%>
                                                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Zodiac">
                                                    <asp:ListItem Enabled="False" Selected="True">Zodiac</asp:ListItem>
                                                    <asp:ListItem>Aries</asp:ListItem>
                                                    <asp:ListItem>Taurus</asp:ListItem>
                                                    <asp:ListItem>Gemini</asp:ListItem>
                                                    <asp:ListItem>Cancer</asp:ListItem>
                                                    <asp:ListItem>Leo</asp:ListItem>
                                                    <asp:ListItem>Virgo</asp:ListItem>
                                                    <asp:ListItem>Libra</asp:ListItem>
                                                    <asp:ListItem>Scorpio</asp:ListItem>
                                                    <asp:ListItem>Sagittarius</asp:ListItem>
                                                    <asp:ListItem>Capricorn</asp:ListItem>
                                                    <asp:ListItem>Aquarius</asp:ListItem>
                                                    <asp:ListItem>Pisces</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <br /> 

                            <div class="form-group row">
                                            <span class="col-sm-2 col-form-label fontstyle" >Nakshatra :</span>
                                            <div class="col-sm-8">
                                                <%-- <asp:Label ID="Label24" runat="server" class="form-control-plaintext" Text="Ashwini"></asp:Label>--%>
                                                <asp:TextBox ID="txtnakshatra" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <br /> 
                            <asp:Button ID="Button3" Enabled=false runat="server" Width="200px" Height="30px" Text="Upload Horoscope"></asp:Button><br />
                            <asp:Image ID="Image1" runat="server"  ImageUrl="~/image/salman-khan-birth-chart.jpg" ImageAlign="Middle"/>
                            </div>

                        
                    </section>
                </div>
                
            </div>

        </div>
    
    </div>
</asp:Content>

