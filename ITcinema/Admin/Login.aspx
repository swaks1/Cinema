<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ITcinema.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin:200px">

                <table align="center" class="auto-style1"  style="width:450px; border:1px solid black">
            <tr>
                <td colspan="2" class="auto-style1">Cinema admin</td>
            </tr>
            <tr>
                <td class="auto-style1">Username</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbUser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style2">
                    <asp:Button ID="btnLogin" runat="server" Text="Log in" style="text-align: left" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style1">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
