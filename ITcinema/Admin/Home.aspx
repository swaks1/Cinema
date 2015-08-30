<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ITcinema.Admin.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 792px;
        }
        .auto-style2 {
            width: 699px;
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
                            <td>&nbsp;</td>
                            <td class="auto-style2">Cinema admin</td>
                            <td>
                                <asp:LinkButton ID="logOut" runat="server" OnClick="logOut_Click">Log out</asp:LinkButton>
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
                             <p>
                                <asp:LinkButton ID="lbListall" runat="server" OnClick="lbListall_Click" >Edit, delete movies</asp:LinkButton>
                            </p>
                             <p>
                                 <asp:LinkButton ID="lbInsert" runat="server" OnClick="lbInsert_Click" >Insert movies</asp:LinkButton>
                            </p>
                             <p>
                                <asp:LinkButton ID="lbProgram" runat="server" OnClick="lbProgram_Click" >Edit program</asp:LinkButton>
                            </p>
                             <p>
                                 <asp:Label ID="Label1" runat="server"></asp:Label>
                            </p>

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
