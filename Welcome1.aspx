<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome1.aspx.cs" Inherits="Welcome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style>
        .container { margin: 150px auto; max-width: 940px; }
        .slide {
            width:100%;
            height: 550px;
            position: relative;

        }
            .slide img {
                width: 100%;
                height: 100%;
                position: absolute;
            }
    </style>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('http://localhost:59055/Ticket_House/movies_poster/background2.jpeg'); background-position: center 100%; background-repeat: no-repeat; background-color: #000000;">
    
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="132px" 
                        ImageUrl="~/logo/9ed01a64-9d57-4df6-bd35-48b4e03a7107_200x200.png" 
                        Width="141px" BackColor="White" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="WELCOME TO TICKET HOUSE" BackColor="White"></asp:Label>
                </td>
                <td>
&nbsp;&nbsp; 
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Welcome.aspx" BackColor="White">&lt;-BACK</asp:HyperLink>
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink3" runat="server">About</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin_Login.aspx" BackColor="White">ADMIN LOGIN</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User_Login.aspx" BackColor="White">USER LOGIN</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
  <div class="slide">
            <img src="slider_image/1.jpg" />
            <img src="slider_image/2.jpg" />
            <img src="slider_image/3.jpg" />
        </div>
    

    <script>
        $(document).ready(function () {
            $(".slide img:gt(0)").hide();
            setInterval(function () {
                $(".slide :first-child").fadeOut(3500).next("img").fadeIn(3500).end().appendTo(".slide");
            }, 3500);
        });
    </script>



    
</body>
   
</html>
