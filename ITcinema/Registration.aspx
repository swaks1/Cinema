<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ITcinema.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact-content">
        <div class="main-contact">
		    <h3 class="head">РЕГИСТРИРАЈ СЕ</h3>
		    <div class="contact-form min-heigth">
             <div class="form">
				    <div class="col-md-6 contact-left">
                        <asp:TextBox ID="tbName" runat="server" placeholder="Име"></asp:TextBox><asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Внесете го вашето име" ControlToValidate="tbName" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbLastName" runat="server" placeholder="Презиме"></asp:TextBox><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Внесете го вашето презиме" ControlToValidate="tbLastName" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbUserName" runat="server" placeholder="Корисничко име"></asp:TextBox><asp:RequiredFieldValidator ID="rfvUserName" runat="server" ErrorMessage="Внесете го вашето корисничко име" ControlToValidate="tbUserName" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbEmail" runat="server" placeholder="Е-адреса"></asp:TextBox><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Внесете ја вашата е-адреса" ControlToValidate="tbEmail" ForeColor="Maroon"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ForeColor="Maroon" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Невалиден мејл" ControlToValidate="tbEmail" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="tbPassword" runat="server" placeholder="Лозинка" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Внесете лозинка" ControlToValidate="tbPassword" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="tbRePassword" runat="server" placeholder="Потврдете ја вашата лозинка" TextMode="Password"></asp:TextBox><asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Лозинките не се софпаѓаат" ControlToCompare="tbPassword" ControlToValidate="tbRePassword" ForeColor="Maroon"></asp:CompareValidator>
                        </br>
                        </br>
                        <asp:Button ID="btnRegistration" class="btn" runat="server" Text="Регистрација" OnClick="btnRegistration_Click" />
                        </br>
                        </br>
				        <asp:Label ID="lblErrMessage" runat="server" ForeColor="Maroon" Text="Не успешна регистрација!" Visible="False"></asp:Label>

				    </div>
				 <div class="clearfix"></div>
			 </div>
	     </div>
			
	 </div>
</div>
</asp:Content>
