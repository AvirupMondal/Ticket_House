<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" style="background-image: url('movies_poster/background.jpeg'); background-position: 100%; font-family: Jokerman; font-size: medium; font-style: normal; color: #FFFFFF">
        .auto-style1 {
            width: 265px;
        }
        .auto-style2 {
            width: 663px;
        }
        .auto-style3 {
            width: 265px;
            height: 78px;
        }
        .auto-style4 {
            width: 663px;
            height: 78px;
        }
        .auto-style5 {
            height: 78px;
        }
        .slide {
            width:100%;
            height: 550px;
            position: relative;

        }
            .slide img {
                width: 100%;
                height: 100%;
                position: absolute;
            top: 0px;
            left: 8px;
        }
    </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-position: center 100%; background-image: url('movies_poster/background2.jpeg'); background-repeat: no-repeat; background-color: #000000;">
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Image ID="Image1" runat="server" Height="132px" 
                        ImageUrl="~/logo/9ed01a64-9d57-4df6-bd35-48b4e03a7107_200x200.png" 
                        Width="141px" BackColor="White" BorderColor="White" />
                </td>
                <td class="auto-style4">
                    <h1>
                    <asp:Label ID="Label1" runat="server" BackColor="Blue" BorderColor="White" 
                            Font-Bold="True" Font-Overline="False" Font-Size="X-Large" 
                            Font-Strikeout="False" Font-Underline="False" ForeColor="White" 
                            Text="Welcome To Ticket House"></asp:Label>
                    </h1>
                </td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#0000CC" 
                        ForeColor="White" NavigateUrl="~/About.aspx">About</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Font-Size="Large" ForeColor="Black" 
                        Text="Log In" style="text-align: center" OnClick="Button2_Click" 
                        PostBackUrl="~/Welcome1.aspx" />
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" BorderColor="White" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="Black" Text="Continue without Login" 
                        OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="Black" Text="Sign Up" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>

        <div class="slide">
            <img src="slider_image/1.jpg" />
            <img src="slider_image/2.jpg" />
            <img src="slider_image/3.jpg" />
        </div>
    </form>

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
