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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
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
        <p>Избетере седишта</p>
        
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
                                <asp:Button   ID="btn1_2" runat="server" Text=" " OnClick="btn1_2_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_3" runat="server" Text=" " OnClick="btn1_3_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn1_4" runat="server" Text=" " OnClick="btn1_4_Click" />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="btn1_5" runat="server" Text=" " OnClick="btn1_5_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_6" runat="server" Text=" " OnClick="btn1_6_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_7" runat="server" Text=" " OnClick="btn1_7_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_8" runat="server" Text=" " OnClick="btn1_8_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_9" runat="server" Text=" " OnClick="btn1_9_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn1_10" runat="server" Text=" " OnClick="btn1_10_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="btn2_1" runat="server" Text=" " OnClick="btn2_1_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_2" runat="server" Text=" " OnClick="btn2_2_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_3" runat="server" Text=" " OnClick="btn2_3_Click" />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="btn2_4" runat="server" Text=" " OnClick="btn2_4_Click" />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="btn2_5" runat="server" Text=" " OnClick="btn2_5_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_6" runat="server" Text=" " OnClick="btn2_6_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_7" runat="server" Text=" " OnClick="btn2_7_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_8" runat="server" Text=" " OnClick="btn2_8_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_9" runat="server" Text=" " OnClick="btn2_9_Click" />
                            </td>
                            <td>
                                <asp:Button     ID="btn2_10" runat="server" Text=" " OnClick="btn2_10_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button50" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button22" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button21" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button33" runat="server" Text=" " />
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button     ID="Button41" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button51" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button80" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button81" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button82" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button83" runat="server" Text=" " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button52" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button23" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button28" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button34" runat="server" Text=" " />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="Button44" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button53" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button64" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button65" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button66" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button67" runat="server" Text=" " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button14" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button24" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button29" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button35" runat="server" Text=" " />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="Button45" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button54" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button68" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button69" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button70" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button71" runat="server" Text=" " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button15" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button25" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button30" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button36" runat="server" Text=" " />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="Button46" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button55" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button72" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button73" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button74" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button75" runat="server" Text=" " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button16" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button26" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button31" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button37" runat="server" Text=" " />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="Button47" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button56" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button76" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button77" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button78" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button79" runat="server" Text=" " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button     ID="Button17" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button27" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button32" runat="server" Text=" " />
                            </td>
                            <td class="auto-style2">
                                <asp:Button     ID="Button38" runat="server" Text=" " />
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button     ID="Button48" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button57" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button12" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button13" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button58" runat="server" Text=" " />
                            </td>
                            <td>
                                <asp:Button     ID="Button59" runat="server" Text=" " />
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
                Број на седишта: <asp:Label ID="lbSeats" runat="server" Text=""></asp:Label>
            </p>
        </asp:Panel>
    </div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>
    <div class="clearfix"></div>

    </form>
</asp:Content>
