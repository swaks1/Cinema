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
		 <%--<p>WE'RE ALWAYS HERE TO HELP YOU</p>--%>
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
			 <h3>Find Us Here</h3>
			 <div class="map">
				<iframe width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe>
                 <br><small><a href="https://www.google.co.in/maps/place/Faculty+of+Computer+Science+and+Engineering/@42.0041131,21.4095487,17z/data=!3m1!4b1!4m2!3m1!1s0x13541443605aa4ab:0x33d56647e5b87264?hl=en" style="color:#000;text-align:left;font-size:12px">View Larger Map</a></small>
			</div>
	 </div>
</div>
            </div>
</asp:Content>
