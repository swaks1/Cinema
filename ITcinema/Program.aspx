<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="ITcinema.Program" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(window).load(function () {
            $("#hlProgram").addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reviews-section">
        <h3 class="head">Програма</h3>
           <div class="col-md-9 reviews-grids">
               <asp:ListView ID="lview" runat="server">
                        <LayoutTemplate>
                            <div class="review">
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />    
                            </div>                
                        </LayoutTemplate>
                        <ItemTemplate>
                            <div class="movie-pic">
								<a href='<%# "Details.aspx?name=" + Eval("Name")%>' runat="server"> <img src='<%#Eval("Image")%>' alt='<%#Eval("Name")%>' runat="server" /> </a>
							</div>
							<div class="review-info">
								<a class="span" href='<%# "Details.aspx?name=" + Eval("Name")%>' runat="server"><%#Eval("NameMk") %></a>
								&nbsp;  
								<div class="clearfix"></div>
								<div class="clearfix"></div>

                                <p class="info">Глумци:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Stars") %></p>
								<p class="info">Режија: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<%#Eval("Director") %></p>
								<p class="info">Жанр:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Genre") %></p>
								<p class="info">Времетраење:&nbsp;&nbsp;<%#Eval("Duration") %>&nbsp;Минути</p>
							</div>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <p>Nothing here.</p>
                        </EmptyDataTemplate>
                    </asp:ListView>
               	    <div class="clearfix"></div>

        </div>
      </div>
    <div class="clearfix"></div>

</asp:Content>
