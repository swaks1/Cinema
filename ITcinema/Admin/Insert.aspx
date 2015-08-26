<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="ITcinema.Admin.Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 790px;
        }
        .auto-style2 {
            width: 712px;
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
                                <asp:LinkButton ID="home" runat="server" OnClick="home_Click"  >Home</asp:LinkButton>
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
                    Insert new movie:</p>
    <p>
    <asp:Label ID="lbErr" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    &nbsp;</p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Name:</td>
            <td>
                <asp:TextBox ID="tbName" runat="server" Width="156px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name(Macedonian):</td>
            <td>
                <asp:TextBox ID="tbNameMk" runat="server" Width="156px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbNameMk"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Description:</td>
            <td>
                <asp:TextBox ID="tbDesctiption" runat="server" Height="46px" TextMode="MultiLine" Width="412px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbDesctiption"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Duration:</td>
            <td>
                <asp:TextBox ID="tbDuration" runat="server" Width="160px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbDuration"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Genre:</td>
            <td>
                <asp:TextBox ID="tbGenre" runat="server" Width="161px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbGenre"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Rating:</td>
            <td>
                <asp:TextBox ID="tbRating" runat="server" Width="159px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbRating"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Stars:</td>
            <td>
                <asp:TextBox ID="tbStars" runat="server" Width="159px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbStars"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Director:</td>
            <td>
                <asp:TextBox ID="tbDirector" runat="server" Width="159px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbDirector"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Release:</td>
            <td>
                <asp:TextBox ID="tbRelease" runat="server" Width="155px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbRelease"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">Image upload:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbErr0" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">URL:</td>
            <td>
                <asp:TextBox ID="tbUrl" runat="server" Width="159px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="tbUrl"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
    </table>
    <p>
    <asp:Button ID="btnInsert" runat="server" Text="Insert new" OnClick="btnInsert_Click" />
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
