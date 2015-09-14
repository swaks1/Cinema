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
		 <h3 class="head">Контакт</h3>
		 <p>СЕКОГАШ ТУКА ЗА ДА ВИ ПОМОГНЕМЕ</p>
		 <div class="contact-form">
				 <div class="col-md-6 contact-left">
				 	<br>
					  <h4><b>Билетарница на Cineland<b></h4>
					  <h5>тел: +389 2 3120 389</h5><br><br><br>

					  <h4><b>Работно време:<b></h4><br>
					  <h5>понеделник-петок:</h5>
					  <h5><b>од 12:30 до 22:30<b></h5><br>
					  <h5>сабота-недела:</h5>
					  <h5><b>од 12:30 до 22:30<b></h5><br>
				  </div>
				  <div class=" contact-right" style="padding-left:20px; padding-right:20px">
					 <img src="images/Cinema.png" class="img-responsive" alt="" />
				 </div>
				 <div class="clearfix"></div>
	     </div>
		 <div class="contact_info">
            <h3>Најдете не овде</h3>
			 <div class="map">
				<iframe width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA6H2y9-aVdth34fJV2lFhUW-6sreJGE1Y&q=Faculty+of+Computer+Science+and+Engineering" runat="server"></iframe>
                 <br><small><a href="https://www.google.co.in/maps/place/Faculty+of+Computer+Science+and+Engineering/@42.0041131,21.4095487,17z/data=!3m1!4b1!4m2!3m1!1s0x13541443605aa4ab:0x33d56647e5b87264?hl=en" style="color:#000;text-align:left;font-size:12px" runat="server">View Larger Map</a></small>
			</div>
	 </div>
</div>
            </div>
</asp:Content>
