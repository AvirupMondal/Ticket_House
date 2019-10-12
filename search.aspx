<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(movies_poster/images6.jpg); width:100%; background-repeat:no-repeat">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:80%; height: 397px;">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
                </td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333" RepeatDirection="Horizontal">
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <ItemTemplate>
                            <a href="movie_info.aspx?id=<%# Eval("Movie_Id") %>">
                            <asp:Image ID="Image1" runat="server" Height="167px" ImageUrl='<%# Eval("Image_link") %>' Width="128px" />
                            </a>
                            <br />
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Movie_Name") %>'></asp:Label>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
