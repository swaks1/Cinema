<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="ITcinema.Print" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/jquery.min.js"></script>
    <script>
        $(function () {
            window.print();
        });
    </script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="auto-style1" style="width:700px;font-size: 1.3em;" align="center">
            <tr>
                <td class="auto-style2">
                    <div class="logo">
		                <img src="images/logoo.png" alt=""/>
	                </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    Почитуван/а
                    <asp:Label ID="lblIme" runat="server" Font-Bold="True"></asp:Label>
                &nbsp;имате резервирано карти за филмот
                    <asp:Label ID="lblFilm" runat="server" Font-Bold="True" Text=""></asp:Label>
                &nbsp;на ден
                    <asp:Label ID="lblDen" runat="server" Font-Bold="True" Text=""></asp:Label>
                &nbsp;во
                    <asp:Label ID="lblCas" runat="server" Font-Bold="True" Text=""></asp:Label>
                &nbsp;часот</td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    За да ги подигнете картите бидете во билетрата половина час пред почетокот на филмот.<br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Резервирани билети:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblBileti" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    Бројот на вашата резервација е : <asp:Label ID="lblId" runat="server"></asp:Label>
                </td>
            </tr>

        
        </table>
    
    </form>
</body>
</html>
