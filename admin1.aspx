<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin1.aspx.cs" Inherits="admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 557px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 83px;
        }
    </style>
</head>
<body style="background-image: url('slider_image/hd3.jpeg'); background-repeat: no-repeat; background-position: center">
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">
                    <asp:ImageButton ID="ImageButton1" runat="server" BackColor="White" ImageUrl="~/logo/9ed01a64-9d57-4df6-bd35-48b4e03a7107_200x200.png" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label52" runat="server" BackColor="White" BorderColor="White" Height="116px" style="font-size: x-large" Text="WELCOME TO TICKET HOUSE" Width="98%"></asp:Label>
                </td>
                <td class="auto-style3">
                    <h4>
                        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="White" NavigateUrl="~/Welcome1.aspx" style="font-size: large">LogOut</asp:HyperLink>
                    </h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:DataList ID="DataList1" runat="server" BackColor="#FFCC99" BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#3399FF" OnCancelCommand="cancel" OnDeleteCommand="delete" OnEditCommand="edit" OnUpdateCommand="update" RepeatDirection="Horizontal">
                        <EditItemTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label38" runat="server" Text="Id"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server" Text='<%# Eval("Id") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label39" runat="server" Text="City_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" Text='<%# Eval("City_Name") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label40" runat="server" Text="Theatre_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server" Text='<%# Eval("Theatre_Name") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label41" runat="server" Text="Time_Span"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Eval("Time_Span") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label42" runat="server" Text="Movie_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Eval("Movie_Name") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label43" runat="server" Text="Image"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Eval("Image") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label44" runat="server" Text="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox18" runat="server" Text='<%# Eval("Medium") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label45" runat="server" Text="IsLiveOrNot"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Eval("IsLiveOrNot") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label46" runat="server" Text="Movie_Description"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Eval("Movie_Description") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label47" runat="server" Text="Date_Starting"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox21" runat="server" Text='<%# Eval("Date_Starting") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label48" runat="server" Text="Date_Ending"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Eval("Date_Ending") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label49" runat="server" Text="Cost(Rs)"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox23" runat="server" Text='<%# Eval("Cost_Rs") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button3" runat="server" CommandName="update" Text="UPDATE" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" CommandName="cancel" Text="CANCEL" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Id"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="City_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Text='<%# Eval("City_Name") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="Theatre_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text='<%# Eval("Theatre_Name") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="Time_Span"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Text='<%# Eval("Time_Span") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Movie_Name"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label30" runat="server" Text='<%# Eval("Movie_Name") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Image"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label31" runat="server" Text='<%# Eval("Image") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="Medium"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label32" runat="server" Text='<%# Eval("Medium") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="IsLiveOrNot"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label33" runat="server" Text='<%# Eval("IsLiveOrNot") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="Movie_Description"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label34" runat="server" Text='<%# Eval("Movie_Description") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="Date_Starting"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label35" runat="server" Text='<%# Eval("Date_Starting") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="Date_Ending"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label36" runat="server" Text='<%# Eval("Date_Ending") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label50" runat="server" Text="Cost(Rs)"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label51" runat="server" Text='<%# Eval("Cost_Rs") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CommandName="edit" Text="EDIT" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" CommandName="delete" Text="DELETE" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx" BackColor="White">Insert Information</asp:HyperLink>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
