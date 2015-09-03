<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ITcinema.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(window).load(function () {
            $("#hlContact").addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<div class="contact-content">

    <div class="main-contact">
		 <h3 class="head">КОНТАКТ</h3>
		 <div class="contact-form">
			 <form id="form2" runat="server">
				 <div class="col-md-6 contact-left">
					  <input type="text" placeholder="Име" required runat="server"/>
					  <input type="text" placeholder="Мејл" required runat="server"/>
					  <input type="text" placeholder="Телефон" required runat="server"/>
				  </div>
				  <div class="col-md-6 contact-right">
					 <textarea placeholder="Порака"></textarea>
					 <input type="submit" value="ПРАТИ" runat="server"/>
				 </div>
				 <div class="clearfix"></div>
			 </form>
	     </div>
		 <div class="contact_info">
			 <div class="map">
				<iframe width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA6H2y9-aVdth34fJV2lFhUW-6sreJGE1Y&q=Faculty+of+Computer+Science+and+Engineering" runat="server"></iframe>
                 <br><small><a href="https://www.google.co.in/maps/place/Faculty+of+Computer+Science+and+Engineering/@42.0041131,21.4095487,17z/data=!3m1!4b1!4m2!3m1!1s0x13541443605aa4ab:0x33d56647e5b87264?hl=en" style="color:#000;text-align:left;font-size:12px" runat="server">View Larger Map</a></small>
			</div>
	 </div>
</div>
            </div>
</asp:Content>
