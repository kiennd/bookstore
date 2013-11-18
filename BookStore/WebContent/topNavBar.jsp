<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
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
					<li><a href="grid-view.html">Online Store</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li><a href="shortcodes.html">Short Codes</a></li>
					<li><a href="blog-detail.html">News</a></li>
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
					<li class="p-category"><a href="#">$</a> <a href="#">£</a> <a
						href="#">€</a></li>
					<li class="p-category"><a href="#">eng</a> <a href="#">de</a>
						<a href="#">fr</a></li>
				</ul>
				<div class="c-btn">
					<a href="cart.jsp" class="cart-btn">Cart</a>
					<div class="btn-group">
						<button data-toggle="dropdown"
							class="btn btn-mini dropdown-toggle">
							0 item(s) - $0.00<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
						</ul>
					</div>
				</div>
			</section>
		</section>
	</section>
</section>