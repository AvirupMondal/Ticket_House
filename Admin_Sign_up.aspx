<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Sign_up.aspx.cs" Inherits="Admin_Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(movies_poster/DZ9PwU2X4AMEJPc.0.jpg); width:100%">
    <form id="form1" runat="server">
    <div >
     <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Admin Sign Up" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Welcome2.aspx" 
                        BackColor="White" BorderColor="#FF3300" BorderWidth="2px">&lt;-BACK</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Must Be Fill" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Phone Number" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Must Be Fill" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Gmail" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Must Be Fill" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="New Password" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Confirm Password" BackColor="White" 
                        BorderColor="#FF3300" BorderWidth="2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Sign Up" OnClick="Button4_Click" 
                        BorderColor="#FF3300" BorderWidth="2px" />
                </td>
                <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin_Login.aspx" 
                        BackColor="White" BorderColor="#FF3300" BorderWidth="2px">Already a User LOGIN?</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
