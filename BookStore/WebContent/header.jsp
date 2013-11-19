<%@page import="model.Category"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header id="main-header">
	<section class="container-fluid container">
		<section class="row-fluid">
			<section class="span4">
				<h1 id="logo">
					<a href="index.html"><img src="images/logo.png" /></a>
				</h1>
			</section>
			<section class="span8">
				<ul class="top-nav2">
					<li><a href="<%=request.getContextPath()%>/profile.jsp">My Account</a></li>
					<li><a href="<%=request.getContextPath()%>/cart.jsp">My Cart</a></li>
					<li><a href="checkout.html">Checkout</a></li>
					<li><a href="order-recieved.html">Track Your Order</a></li>
				</ul>
				<div class="search-bar">
				<form action = "filter">		
					<input name="title" type="text" value="search entire store here..." />
					<input type="button" value="Search" />
				</form>
				</div>
			</section>
		</section>
	</section>
	<!-- Start Main Nav Bar -->
	<nav id="nav">
		<div class="navbar navbar-inverse">
			<div class="navbar-inner">
				<button type="button" class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<%
							CategoryDAO cd = new CategoryDAO();
							Vector<Category> categories = cd.find("");
							for (int i = 0; i < categories.size(); i++) {
								Category c = categories.elementAt(i);
						%>
							<li><a href="<%=request.getContextPath()%>/filter?categoryid=<%=c.getId() %>"><%=c.getName() %></a></li>
						<%
							}
						%>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!-- /.navbar-inner -->
		</div>
		<!-- /.navbar -->
	</nav>
	<!-- End Main Nav Bar -->
</header>