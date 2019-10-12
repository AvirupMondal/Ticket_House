<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Payment"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Ticket Option"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Box Office Pick up</asp:ListItem>
                    <asp:ListItem>M-Ticket</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Payment Option"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
                    <asp:ListItem>Credit/Debit</asp:ListItem>
                    <asp:ListItem>Online Banking</asp:ListItem>
                    <asp:ListItem>Wallet Pay</asp:ListItem>
                    <asp:ListItem>Phone Pay</asp:ListItem>
                    <asp:ListItem>UPI</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="PAY" OnClick="Button3_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

