<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="ITcinema.Admin.Program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 800px;
            height: 0px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 347px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table  align="center" class="auto-style1" style="width:800px">
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style8">Cinema admin</td>
                            <td class="auto-style5">
                                <asp:LinkButton ID="home" runat="server" OnClick="home_Click" CausesValidation="False"  >Home</asp:LinkButton>
                            </td>
                            <td class="auto-style5">
                                <asp:LinkButton ID="logOut" runat="server" OnClick="logOut_Click" CausesValidation="False">Log out</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                        Select movie to add to the active program<br />
                        <br /> &nbsp;<asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="120px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="379px"></asp:ListBox>

                        <br />
                        <asp:Label ID="Info" runat="server"></asp:Label>

                        <br />

                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style3">Name:</td>
                                <td>
                                    <asp:TextBox ID="tbName" runat="server" ReadOnly="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbName"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Start date:</td>
                                <td>
                                    <asp:TextBox ID="tbStart" runat="server" ReadOnly="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbStart"></asp:RequiredFieldValidator>
                                    <asp:Calendar ID="CalendarStart" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnDayRender="CalendarStart_DayRender" OnSelectionChanged="CalendarStart_SelectionChanged">
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">End date:</td>
                                <td>
                                    <asp:TextBox ID="tbEnd" runat="server" ReadOnly="True"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbEnd"></asp:RequiredFieldValidator>
                                    <asp:Calendar ID="CalendarEnd" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px" OnDayRender="CalendarEnd_DayRender" OnSelectionChanged="CalendarEnd_SelectionChanged">
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                    </asp:Calendar>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3">Time (hh:mm):</td>
                                <td>
                                    <asp:TextBox ID="tbTime" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbTime"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="tbTime" ValidationExpression="^(?:0?[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                        </table>

                    <br />
                    <asp:Button ID="btnSave"  runat="server" Text="Save" Height="26px" OnClick="btnSave_Click" />
                        <br />
                        <br />
                        <br />
                        <br />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">&nbsp; Proekt 2015 Internet Tehnologii</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
