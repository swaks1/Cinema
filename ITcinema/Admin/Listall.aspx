<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listall.aspx.cs" Inherits="ITcinema.Admin.Listall" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 713px;
        }
        .auto-style8 {
            width: 265px;
            text-align: left;
        }
        .auto-style9 {
            width: 341px;
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
                            <td class="auto-style9">Cinema admin</td>
                            <td class="auto-style8">
                                <asp:LinkButton ID="home" runat="server" OnClick="home_Click">Home</asp:LinkButton>
                            </td>
                            <td class="auto-style5">
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
                <td><p>
    List of all active movies:</p>
<p>
    <asp:ListBox ID="ListBox1" runat="server" Height="120px" Width="379px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
</p>
    <p>
    <asp:Label ID="lbErr" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    <asp:Button ID="btnEdit" runat="server" Text="Edit" OnClick="btnEdit_Click" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Name:</td>
            <td>
                <asp:TextBox ID="tbName" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
         <td class="auto-style3">Name(Macedonian):</td>
            <td>
                <asp:TextBox ID="tbNameMk" runat="server" Width="156px"></asp:TextBox>
            </td>
        <tr>
            <td class="auto-style3">Description:</td>
            <td>
                <asp:TextBox ID="tbDesctiption" runat="server" Height="46px" TextMode="MultiLine" Width="412px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Duration:</td>
            <td>
                <asp:TextBox ID="tbDuration" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Genre:</td>
            <td>
                <asp:TextBox ID="tbGenre" runat="server" Width="161px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Rating:</td>
            <td>
                <asp:TextBox ID="tbRating" runat="server" Width="159px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Stars:</td>
            <td>
                <asp:TextBox ID="tbStars" runat="server" Width="159px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Director:</td>
            <td>
                <asp:TextBox ID="tbDirector" runat="server" Width="159px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Release:</td>
            <td>
                <asp:TextBox ID="tbRelease" runat="server" Width="155px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Image:</td>
            <td>
                <asp:Image ID="tbImage" runat="server" Height="117px" Width="130px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Image upload:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
    <asp:Label ID="lbErr0" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">URL:</td>
            <td>
                <asp:TextBox ID="tbUrl" runat="server" Width="159px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>

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
