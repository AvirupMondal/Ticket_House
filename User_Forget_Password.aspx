<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_Forget_Password.aspx.cs" Inherits="Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 177px;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3
        {
            width: 160px;
            height: 109px;
        }
        .auto-style4
        {
            width: 177px;
            height: 109px;
        }
        .auto-style5
        {
            height: 109px;
        }
    </style>
</head>
<body style="background-image:url('movies_poster/images7.jpg'); width:43%; background-repeat:repeat">
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
                    <asp:Label ID="Label1" runat="server" Text="Email " BackColor="White"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Your Password Is" BackColor="White"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" BackColor="White"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/User_Login.aspx">LogIn</asp:HyperLink>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
