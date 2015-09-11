<%@ Page Title="" Language="C#" MasterPageFile="~/Cinema.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ITcinema.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(window).load(function () {
            $("#hlHome").addClass("active");
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="text-center">
    <%--<div class="header">
               <div class="header-info"  style="background-color:#4b4a4a;">
                    <h1>BIG HERO 6</h1>
                    <p class="age"><a href="#">All Age</a> Don Hall, Chris Williams</p>
                    <p class="review">Rating	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;  8,5/10</p>
                    <p class="review reviewgo">Genre	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp; Animation, Action, Comedy</p>
                    <p class="review">Release &nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp; 7 November 2014</p>
                    <p class="special">The special bond that develops between plus-sized inflatable robot Baymax, and prodigy Hiro Hamada, who team up with a group of friends to form a band of high-tech heroes.</p>
                    <a class="video" href="#"><i class="video1"></i>WATCH TRAILER</a>
                    <a class="book" href="#"><i class="book1"></i>BOOK TICKET</a>
                </div>
        </div>--%>
            <div class="video">
                <iframe id="iframe"  frameborder="0" allowfullscreen runat="server"></iframe>
            </div>

    <%-- slider --%>
    <div class="review-slider">
                    <asp:ListView ID="lview" runat="server">
                        <LayoutTemplate>
                            <ul id="flexiselDemo1">
                                <asp:PlaceHolder ID="itemPlaceholder" runat="server" />    
                            </ul>                
                        </LayoutTemplate>
                        <ItemTemplate>
                            <li>
                                 <a  href='<%# "Details.aspx?name=" + Eval("Name")%>' runat="server"><img  src='<%#Eval("Image")%>' alt='<%#Eval("Name")%>' runat="server" /></a>
                            </li>
                        </ItemTemplate>
                        <EmptyDataTemplate>
                            <p>Nothing here.</p>
                        </EmptyDataTemplate>
                    </asp:ListView>
               <script type="text/javascript">
		$(window).load(function() {

		  $("#flexiselDemo1").flexisel({
				visibleItems: 6,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: false,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint:480,
						visibleItems: 2
					},
					landscape: {
						changePoint:640,
						visibleItems: 3
					},
					tablet: {
						changePoint:768,
						visibleItems: 4
					}
				}
			});
			});
                </script>
                <script type="text/javascript" src="js/jquery.flexisel.js"></script>
            </div>
    <%-- End of slider --%>

            <div class="news">
                <div class=" news-left-grid">
                    <h3>Побрзајте,</h3>
                    <h2>резервирајте карти веднаш!</h2>
                    <h4>Лесно, едноставно и брзо.</h4>
                    <asp:HyperLink ID="hlBook" runat="server" NavigateUrl="Bookticket.aspx"><i class="book"></i>Резервација</asp:HyperLink>
                    <p>Попуст до <strong>10%</strong> за сите членови!</p>
                </div>
                <asp:Label ID="error" runat="server" Text=""></asp:Label>
                <div class="clearfix"></div>
            </div>

    </div>

    </asp:Content>

