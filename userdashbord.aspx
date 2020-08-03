<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="userdashbord.aspx.cs" Inherits="userdashbord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .div1 {
                background-color: rgba(255,255,255,0.2);
    color: aliceblue;
        }
         .bg {
            background-image: url(../image/pinkhearts-fallinganimated-gif.gif);
            background-size: cover;
        }
        body {
     padding-top: 0px !important; 
     padding-bottom: 0px !important; 
}
        .rounded {
    border-radius: 1.25rem !important;
}
        /*.hr1{
            margin-top: -17px !important;
    margin-bottom: 0px !important;
    box-shadow: 136px 55px 55px 17px #e60a30;
    width: 25%;
    border-top: 0px solid rgba(0, 0, 0, 0) !important;
        }*/
        .bgcolor {
            /*background-color: rgba(132,106,221,0.9);*/
            background-color: rgba(52, 58, 64, 0.29);
            background-size: cover;
            padding: 15px;
            justify-content: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid bg">
        <div class="bgcolor">
        <div class="row">
            <div class="col-md-3" style="background-color:none">
                <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#inbox">Inbox</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#sent">Sent</a>
    </li>
    
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="inbox" class="container tab-pane active"><br />
      <table>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Pendding</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="lblpending" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Accepted</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="lblaccept" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Replied</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="lblreply" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Declined</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="lbldecline" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
      </table>
    </div>
    <div id="sent" class="container tab-pane fade"><br />
      <table>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Pendding</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="Label1" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Accepted</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="Label2" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Replied</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="Label3" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
          <tr style="border-bottom:1px dotted">
              <td style="padding: 11px;">Declined</td>
              <td style="width: 100%;text-align:center"> <asp:Label ID="Label4" runat="server" Text="0" CssClass="badge badge-primary"></asp:Label></td>
          </tr>
      </table>
    </div>
    
  </div>

            </div>
            <div class="col-md-8">
                <marquee behavior="slide">
                <div class="">
                   <h2 style="text-align:center">NEW MEMBERS</h2>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" RepeatDirection="Horizontal" RepeatColumns="5">
                        <ItemTemplate>
                            <div style="padding: 8px;border: 7px groove #343a40b5;margin-right: 10px;  border-radius:10px">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/IMG_0001.JPG" CssClass="img-fluid rounded-circle"></asp:Image>
                            <div style="text-align:center">
                            <asp:Label ID="FirstNameLabel" runat="server" CssClass="" Text='<%# Eval("FirstName") %>' />
                            
                            
                            <asp:Label ID="MiddleNameLabel" runat="server" Text='<%# Eval("MiddleName") %>' />
                                                       
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                            <br />
</div>
                                </div>
<br />
                        </ItemTemplate>
                    </asp:DataList>
                         
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT top 5 [FirstName], [MiddleName], [LastName] FROM [UserData] ORDER BY Id DESC"></asp:SqlDataSource>
                </div>
                    </marquee>
                <div>
                    <h2 class="text-capitalize text-center">recommended matching</h2>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1"  RepeatDirection="Horizontal" RepeatColumns="1">
                        <ItemTemplate>
                            <div class="row img-thumbnail rounded " style="margin:10px 0px 11px 11px; width: 100%;margin-top: 10px;box-shadow: 9px 9px 3px -3px #343a40; ">
                                <div class="col-md-4">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/IMG_0001.JPG" CssClass="img-fluid img-thumbnail rounded"></asp:Image>
                                </div>
                                <div class="col-md-8" style="background-image: url(image/dbg1.gif);background-repeat: no-repeat;background-position: right;background-size: 256px;">
                                     <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' /><br />
                                    <i class="fas fa-map-marker-alt"><asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' /></i><br />
                                    <hr align="left" width="54%" style="border-top: 9px groove grey; border-radius: 7px;" />
                                    <%--<hr class="hr1" />--%>
                                    <span><b>Age :- </b></span> <asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' /><br />
                                    <span><b>Birthdate :- </b></span> <asp:Label ID="bdateLabel" runat="server" Text='<%# Eval("bdate") %>' /><br />
                                    <span><b>Qualification :- </b></span> <asp:Label ID="qualificationLabel" runat="server" Text='<%# Eval("qualification") %>' />
                                    <div style="    position: absolute;top: 30%;left: 64%;">
                                        <b>Are you Interested</b><br />

                                        <asp:Button ID="Button1" runat="server" Text="Yes" CssClass="btn btn-success" />
                                        <asp:Button ID="Button2" runat="server" Text="No" CssClass="btn btn-light"/>
                                    </div>
                                    
                                </div>

                            </div>
                            <%--Id:
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                            <br />
                            Email_Id:
                            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' />--%>
                           
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conStr %>" SelectCommand="SELECT [Id], [Email_Id], [name], [age], [bdate], [qualification], [address] FROM [usprofile]"></asp:SqlDataSource>
                </div>
            </div>

        </div>
            </div>
    </div>    

</asp:Content>

