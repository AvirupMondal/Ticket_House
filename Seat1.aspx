<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Seat1.aspx.cs" Inherits="Seat1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <style type="text/css">
            .Table {
                display: table;
            }

            .Title {
                display: table-caption;
                text-align: center;
                font-weight: bold;
                font-size: larger;
            }

            .Heading {
                display: table-row;
                font-weight: bold;
                text-align: center;
            }

            .Row {
                display: table-row;
            }

            .Cell {
                display: table-cell;
                border: solid;
                border-width: thin;
                padding-left: 5px;
                padding-right: 5px;
            }

            .ch {
                width: 50px;
                height: 33px;
                z-index: 99;
            }
            
            .auto-style3
            {
                width: 465px;
            }
            .auto-style4
            {
                width: 154px;
            }
            
        </style>
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    </head>
    <div class="Table">
        <div class="Title">
            <p>This is a Table</p>
        </div>
        <div class="Heading">

            <div class="Cell">
                <p>S</p>
            </div>

            <div class="Cell">
                <p>C</p>
            </div>

            <div class="Cell">
                <p>R</p>
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
                <p>E</p>
            </div>

            <div class="Cell">
                <p>E</p>
            </div>

            <div class="Cell">
                <p>N</p>
            </div>

        </div>




        <div class="Row">
            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>
        </div>

        <div class="Row">

            <div class="Cell">
                <div class="ch chk_bc1">
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="A1" CssClass="chk1"/>
                </div>
            </div>

            <div class="Cell">
                <div class="ch chk_bc2">
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="A2" />
                </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc3">
                <asp:CheckBox ID="CheckBox3" runat="server" Text="A3" />
                </div>
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            <div class="ch chk_bc4">
                <asp:CheckBox ID="CheckBox4" runat="server" Text="B1" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc5">
                <asp:CheckBox ID="CheckBox5" runat="server" Text="B2" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc6">
                <asp:CheckBox ID="CheckBox6" runat="server" Text="B3" />
            </div>
        </div>
        </div>


        <div class="Row">

            <div class="Cell">
            <div class="ch chk_bc7">
                <asp:CheckBox ID="CheckBox7" runat="server" Text="A4" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc8">
                <asp:CheckBox ID="CheckBox8" runat="server" Text="A5" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc9">
                <asp:CheckBox ID="CheckBox9" runat="server" Text="A6" />
            </div>
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            <div class="ch chk_bc10">
                <asp:CheckBox ID="CheckBox10" runat="server" Text="B4" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc11">
                <asp:CheckBox ID="CheckBox11" runat="server" Text="B5" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc12">
                <asp:CheckBox ID="CheckBox12" runat="server" Text="B6" />
            </div>
            </div>
        </div>

        <div class="Row">

            <div class="Cell">
            <div class="ch chk_bc13">
                <asp:CheckBox ID="CheckBox13" runat="server" Text="A7" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc14">
                <asp:CheckBox ID="CheckBox14" runat="server" Text="A8" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc15">
                <asp:CheckBox ID="CheckBox15" runat="server" Text="A9" />
            </div>
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            <div class="ch chk_bc16">
                <asp:CheckBox ID="CheckBox16" runat="server" Text="B7" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc17">
                <asp:CheckBox ID="CheckBox17" runat="server" Text="B8" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc18">
                <asp:CheckBox ID="CheckBox18" runat="server" Text="B9" />
            </div>
            </div>
        </div>

        <div class="Row">

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            </div>
        </div>

        <div class="Row">

            <div class="Cell">
            <div class="ch chk_bc19">
                <asp:CheckBox ID="CheckBox19" runat="server" Text="C1" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc20">
                <asp:CheckBox ID="CheckBox20" runat="server" Text="C2" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc21">
                <asp:CheckBox ID="CheckBox21" runat="server" Text="C3" />
            </div>
            </div>

            <div class="Cell">
            </div>

            <div class="Cell">
            <div class="ch chk_bc21">
                <asp:CheckBox ID="CheckBox22" runat="server" Text="C4" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc23">
                <asp:CheckBox ID="CheckBox23" runat="server" Text="C5" />
            </div>
            </div>

            <div class="Cell">
            <div class="ch chk_bc24">
                <asp:CheckBox ID="CheckBox24" runat="server" Text="C6" />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                <br />
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style4">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                    </tr>
                </table>
            </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_CheckBox1").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox1").prop("checked") == true) {
                    $(".chk_bc1").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc1").attr("style", "background-color: none");
                }
            });


            $("#ContentPlaceHolder1_CheckBox2").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox2").prop("checked") == true) {
                    $(".chk_bc2").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc2").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox3").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox3").prop("checked") == true) {
                    $(".chk_bc3").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc3").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox4").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox4").prop("checked") == true) {
                    $(".chk_bc4").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc4").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox5").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox5").prop("checked") == true) {
                    $(".chk_bc5").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc5").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox6").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox6").prop("checked") == true) {
                    $(".chk_bc6").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc6").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox7").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox7").prop("checked") == true) {
                    $(".chk_bc7").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc7").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox8").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox8").prop("checked") == true) {
                    $(".chk_bc8").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc8").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox9").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox9").prop("checked") == true) {
                    $(".chk_bc9").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc9").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox10").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox10").prop("checked") == true) {
                    $(".chk_bc10").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc10").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox11").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox11").prop("checked") == true) {
                    $(".chk_bc11").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc11").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox12").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox12").prop("checked") == true) {
                    $(".chk_bc12").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc12").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox13").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox13").prop("checked") == true) {
                    $(".chk_bc13").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc13").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox14").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox14").prop("checked") == true) {
                    $(".chk_bc14").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc14").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox15").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox15").prop("checked") == true) {
                    $(".chk_bc15").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc15").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox16").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox16").prop("checked") == true) {
                    $(".chk_bc16").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc16").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox17").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox17").prop("checked") == true) {
                    $(".chk_bc17").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc17").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox18").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox18").prop("checked") == true) {
                    $(".chk_bc18").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc18").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox19").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox19").prop("checked") == true) {
                    $(".chk_bc19").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc19").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox20").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox20").prop("checked") == true) {
                    $(".chk_bc20").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc20").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox21").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox21").prop("checked") == true) {
                    $(".chk_bc21").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc21").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox22").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox22").prop("checked") == true) {
                    $(".chk_bc22").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc22").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox23").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox23").prop("checked") == true) {
                    $(".chk_bc23").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc23").attr("style", "background-color: none");
                }
            });

            $("#ContentPlaceHolder1_CheckBox24").change(function () {
                if ($("#ContentPlaceHolder1_CheckBox24").prop("checked") == true) {
                    $(".chk_bc24").attr("style", "background-color: green");
                }
                else {
                    $(".chk_bc24").attr("style", "background-color: none");
                }
            });








        });
    </script>
    </html>

</asp:Content>

