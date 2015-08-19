<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="ITcinema.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    List of all active movies:</p>
<p>
    <asp:ListBox ID="ListBox1" runat="server" Height="120px" Width="379px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
</p>
    <p>
    <asp:Label ID="lbErr" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    <asp:Button ID="btnEdit" runat="server" Text="Edit" />
    <asp:Button ID="btnInsert" runat="server" Text="Insert new" />
    <asp:Button ID="btnClear" runat="server" Text="Clear" />
    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Name:</td>
            <td>
                <asp:TextBox ID="tbName" runat="server" Width="156px"></asp:TextBox>
            </td>
        </tr>
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
                <asp:Button ID="btnUpload" runat="server" Text="Upload" />
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
</asp:Content>
