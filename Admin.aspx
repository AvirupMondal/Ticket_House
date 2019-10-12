<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 591px;
            height: 26px;
        }
        .auto-style2 {
            width: 100%;
            height: 339px;
        }
        .auto-style7 {
            height: 26px;
            width: 1753px;
        }
        .auto-style8 {
            height: 27px;
            width: 1753px;
        }
        .auto-style9 {
            width: 591px;
            height: 27px;
        }
        .auto-style10 {
            width: 401px;
            height: 26px;
        }
        .auto-style11 {
            width: 401px;
            height: 27px;
        }
    </style>
</head>
<body style="background-image: url('slider_image/admin.jpg'); background-repeat: no-repeat; width: 100%; height: 100%;">
    <form id="form1" runat="server">
    <div >
    
        &nbsp;<table class="auto-style2">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label12" runat="server" Text="ADMIN"></asp:Label>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" Text="City_Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Theatre_Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label3" runat="server" Text="Time_Span"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label4" runat="server" Text="Movie_Name"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label6" runat="server" Text="Medium"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label7" runat="server" Text="IsLiveOrNot"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label8" runat="server" Text="Movie_Description"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label9" runat="server" Text="Date_Starting"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label10" runat="server" Text="Date_Ending"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="Label11" runat="server" Text="Cost(Rs)"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
