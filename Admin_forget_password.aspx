<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_forget_password.aspx.cs" Inherits="Admin_forget_password" %>

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
                width: auto;
                height: auto;
                position: absolute;
            }
    </style>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body style="background-position: center center; background-image: url('slider_image/admin.jpg'); background-repeat: repeat; width: 100%; height: 100%; background-attachment: fixed;">
    <form id="form1" runat="server">
    <div>
    <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Email " BorderColor="White"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Your Password Is" 
                        BorderColor="#3333FF"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" BackColor="White"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin_Login.aspx">LogIn</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>

</body>
</html>
