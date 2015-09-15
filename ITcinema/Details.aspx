<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="ITcinema.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
    .auto-style2 {
        width: 136px;
    }
    .auto-style3 {
        height: 22px;
        width: 136px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="clearfix"></div>
 
 
        <div class="reviews-section">
        <div class="col-md-9 reviews-grids" style="top: -40px;">
        <div class="review">
    <div>
 
        <asp:Label ID="lbName1" runat="server" Font-Bold="True" Font-Size="XX-Large" style="margin-bottom:12px;padding-bottom:7px; border-bottom:2px solid #4b4b4b;color:#000000;font-weight:700;" ></asp:Label>
        <br>
        <br>
        <br>
 
        <div class="video">
                <iframe id="iframe"  frameborder="0" allowfullscreen runat="server" style="border: medium solid #000000"></iframe>
            </div>
        <br>
        <br>
        <div id="main">
        <div id="main1">
        <asp:Image ID="Image1" runat="server" style="float:left" class="img-responsive"/>
        </div>
        <div id="main2" style="float:left;margin-bottom:20px;padding-left:20px">
       <asp:Label ID="lbDescription" runat="server" Height="70px" TextMode="MultiLine" Width="412px" float="right" ReadOnly="True" Font-Italic="True" Font-Bold="True"></asp:Label>
 
        <table class="auto-style1" class="info" >
        <tr>
            <td class="auto-style2">име:</td>
            <td>
                <asp:Label ID="lbName" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>          
            </td>
        </tr>
        <tr>
            <td class="auto-style3">времетраење:</td>
            <td class="auto-style1">
                <asp:Label ID="lbDuration" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Underline="True"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3">жанр:</td>
            <td>
                <asp:Label ID="lbGenre" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3">рејтинг:</td>
            <td>
                <asp:Label ID="lbRating" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3">улоги:</td>
            <td>
                <asp:Label ID="lbStars" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style3">режија:</td>
            <td>
                <asp:Label ID="lbDirector" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
             
            </td>
        </tr>
        <tr>
            <td class="auto-style3">премиера:</td>
            <td>
                <asp:Label ID="lbRelease" runat="server" Width="160px" style="margin-bottom:5px" Font-Bold="True" Font-Size="Medium" Font-Underline="True"></asp:Label>
               
            </td>
        </tr>
    </table>
 
 
        </div>
    </div>
 
        </div>
       </div>
        </div>
 </div>
 
 
       
        <div class="clearfix"></div>
            <div class="clearfix"></div>
        <div class="clearfix"></div>
        <div class="clearfix"></div>

 
</asp:Content>
