<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="model.*"%>
<%@page import="control.backend.BookAction"%>
<%@page import="control.frontend.LoginAction"%>
<%
	User user = null;
	user = (User) session.getAttribute("user");
	String name = null;
	if (user != null) {
		name = user.getUsername();
	} else 
		//response.sendRedirect("login.jsp");
	
	
%>

<section class="top-nav-bar">
	<section class="container-fluid container">
		<section class="row-fluid">
			<section class="span6">
				<ul class="top-nav">
					<li><a href="index.jsp" class="active">Home page</a></li>
					<li><a href="contact.jsp">Contact Us</a></li>
				</ul>
			</section>
			<section class="span6 e-commerce-list">
				<ul>
					<%
						if (user != null) {
							out.println("<li>Welcome " + name + " </li>");
							out.println("<li><a href='logout'>Log out</a></li>");
						} else {
							out.println("<li><a href='login.jsp'>Login</a> or <a href='register.jsp'>Create an account</a></li>");
						}
					%>
					
				</ul>
				<div class="c-btn">
					<a href="cart.jsp" class="cart-btn">Cart</a>
					<%
						Vector<Cart> cartlist2 = (Vector<Cart>) session.getAttribute("cartlist");
						long totalPrice = 0;
						long numberitem = 0;
						if(cartlist2!=null){
							numberitem = cartlist2.size();
							for(int i=0;i<cartlist2.size();i++){
								totalPrice += cartlist2.elementAt(i).getBook().getPrice()*cartlist2.elementAt(i).getQuantity();
							}
						}
						session.setAttribute("totalPrice", totalPrice);
						
					%>
					<div class="btn-group">
						<button data-toggle="dropdown"
							class="btn btn-mini dropdown-toggle">
							
							<%=numberitem%> item(s) - $<%=totalPrice %><span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="<%=request.getContextPath()%>/cart.jsp">View cart</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
						</ul>
					</div>
				</div>
			</section>
		</section>
	</section>
</section>



<%
	String str = null;
	try {
		str = session.getAttribute("notify").toString();
		session.setAttribute("notify", null);
	} catch (Exception ex) {
		ex.printStackTrace();
	}
	String n = "0";
	if (str != null) {
		n = str;
		System.out.println("Message: "+n);
%>
<script src="js/alertify.min.js">alertify.alert("Message");</script>
<script>
	alert("<%=n%>");
	
</script>
<%
	
	}
	
%>