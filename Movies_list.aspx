<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movies_list.aspx.cs" Inherits="Movies_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 104px;
        }
    </style>
</head>
<body style="background-image:url(movies_poster/images2.jpg); width:100%">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="WELCOME"></asp:Label>
&nbsp;
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home_master.aspx" 
                        BackColor="White">HOME</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/About.aspx" 
                        BackColor="White">ABOUT</asp:HyperLink>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td>
                    <asp:DataList ID="DataList1" runat="server" BackColor="White"
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
                        ForeColor="Black" GridLines="Vertical" RepeatDirection="Horizontal" Font-Bold="True" Font-Italic="True" Font-Names="Algerian" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False">
                        <AlternatingItemStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <br />
                                        <a href="movie_info.aspx?id=<%# Eval("Movie_Id") %>">
                                        <asp:Image ID="Image1" runat="server" Height="167px" ImageUrl='<%# Eval("Image_link") %>' Width="128px" />
                                            </a>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("Movie_Name") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
