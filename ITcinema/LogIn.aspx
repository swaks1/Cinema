<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ITcinema.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
        <div class="main-contact min-heigth">
		    <h3 class="head">Најави се</h3>
		    <div class="contact-form ">
                <div class="form">
				    <div class="col-md-6 contact-left">
                        <asp:TextBox ID="tbUserName" runat="server" placeholder="Корисничко име"></asp:TextBox><asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Внесете го вашето корисничко име" ControlToValidate="tbUserName" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbPassword" runat="server" placeholder="Лозинка"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="tbPassword" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        </br>
				        <asp:Label ID="lblErrMessage" runat="server" ForeColor="Maroon"></asp:Label>
                        </br>
                        </br>
                        <asp:Button ID="btnRegistration" class="btn" runat="server" Text="Најава" OnClick="btnRegistration_Click"/>
                      
                        </div>
				    </div>
				 <div class="clearfix"></div>
	     </div>
			
	 </div>
</div>
</asp:Content>
