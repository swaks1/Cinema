 <%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Bookticket.aspx.cs" Inherits="ITcinema.Bookticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(window).load(function () {
            $("#hlBooking").addClass("active");

            $(".seats table input").click(function () {
                //if($(this).hasClass("selected"))
                //    $(this).removeClass("selected");
             //   $(".lbSelected").append($(this).attr('id') + ",");
            });
            function printUrl() {
                window.open('http://localhost:51364/Print.aspx', '_blank');
            }
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 67px;
        }
        .auto-style2 {
            width: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <form id="form1" runat="server" class="min-heigth">
    <div class="clearfix"></div>
        <div class="clearfix"></div>

    <div class="reviews-section">
        <h3 class="head">РЕЗЕРВАЦИЈА</h3>
        <br />
        <br />
    <asp:Panel ID="moviedate" runat="server">
        <h3>Чекор 1 /3</h3>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            Изберете филм
        </p>
        <asp:DropDownList ID="ddlMovie" runat="server" OnSelectedIndexChanged="ddlMovie_SelectedIndexChanged" CssClass="input" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <br />
        <p>
            Изберете датум
        </p>
        <asp:DropDownList ID="ddlDate" runat="server" CssClass="input" AutoPostBack="True" OnSelectedIndexChanged="ddlDate_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:Label ID="error" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnCekor1" runat="server" Text="Следен чекор" CssClass="steps-btn" OnClick="btnCekor1_Click" Enabled="false" />

    </asp:Panel>

    <asp:Panel ID="bookseats" runat="server" Visible="False">
        <h3>Чекор 2 /3</h3>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>Избетере седишта за филмот <asp:Label ID="lbFilm" runat="server" Text=""></asp:Label>&nbsp; на ден <asp:Label ID="lbDen" runat="server" Text=""></asp:Label>&nbsp; во <asp:Label ID="lbCas" runat="server" Text=""></asp:Label>&nbsp; часот</p>
        
        <br />
        
        <table class="nav-justified seats" style="width:60%;" align="center">
            <tr style="height:120px;">
                <td class="auto-style1">&nbsp;</td>
                <td align="center">Платно</td>
            </tr>
            <tr>
                <td class="auto-style1">1</td>
                <td rowspan="8">
                    <table class="nav-justified" id="seats"  >
                        <tr>
                            <td>
                                <asp:Button   ID="btn1_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button   ID="btn1_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn1_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="btn1_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn2_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn2_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="btn2_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn3_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn3_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="btn3_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn3_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn4_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn4_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="btn4_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn4_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn5_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn5_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="btn5_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn5_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn6_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn6_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="btn6_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn6_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn7_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn7_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="btn7_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn7_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn8_1" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_2" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_3" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn8_4" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="btn8_5" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_6" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_7" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_8" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_9" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn8_10" runat="server" Text=" " OnClick="btn1_1_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">2</td>
            </tr>
            <tr>
                <td class="auto-style1">3</td>
            </tr>
            <tr>
                <td class="auto-style1">4</td>
            </tr>
            <tr>
                <td class="auto-style1">5</td>
            </tr>
            <tr>
                <td class="auto-style1">6</td>
            </tr>
            <tr>
                <td class="auto-style1">7</td>
            </tr>
            <tr>
                <td class="auto-style1">8</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:Button  ID="btnOtkazi" runat="server" Text="Назад"  CssClass="steps-btn"  OnClick="btnOtkazi_Click"  />
                            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCekor2" runat="server" OnClick="btnCekor2_Click"  CssClass="steps-btn" Text="Потврди резервација" />
                            
        <br />
        <asp:Label ID="lbSelected" CssClass="lbSelected" runat="server" ></asp:Label>
                            
    </asp:Panel>

        <asp:Panel ID="confirm" runat="server" Visible="false">
            <h3>Чекор 3 /3</h3>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                Имате избрано <asp:Label ID="lbBrTiket" runat="server" Text=""></asp:Label> 
                <br />
                Вкупно <asp:Label ID="lbTotal" runat="server" Text=""></asp:Label> денари.
                <br />
                Cедишта:<br /> &nbsp;&nbsp;&nbsp;<asp:Label ID="lbSeats" runat="server" Text=""></asp:Label>
            </p>
            <asp:Button ID="printButton" runat="server" Text="Print"  OnClientClick="window.open('http://localhost:51364/Print.aspx', '_blank');"  />
<%--            <button onclick='<%= "window.open('Print.aspx?film=" + lbFilm.Text%>' runat="server"></button>--%>
        </asp:Panel>
    </div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>

    </form>
</asp:Content>
