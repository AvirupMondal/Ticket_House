<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome2.aspx.cs" Inherits="Welcome2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
    <div style="background-image:url(movies_poster/background.jpeg) ; width:100%;background-repeat:repeat">
    <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="132px" 
                        ImageUrl="~/logo/9ed01a64-9d57-4df6-bd35-48b4e03a7107_200x200.png" 
                        Width="141px" BackColor="White" />
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="WELCOME TO TICKET HOUSE" 
                        BackColor="White"></asp:Label>
                </td>
                <td>
&nbsp;&nbsp; 
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Welcome.aspx" 
                        BackColor="White">&lt;-BACK</asp:HyperLink>
&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server">About</asp:HyperLink>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/Admin_Sign_up.aspx" BackColor="White">ADMIN SIGNUP</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User_Sign_up.aspx" 
                        BackColor="White">USER SIGNUP</asp:HyperLink>
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
