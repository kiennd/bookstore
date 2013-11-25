<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="sidebar">
	<%
		User user = (User) session.getAttribute("user");
		String name = "";
		if (user == null) {
			String redirectURL = request.getContextPath()
					+ "/admin/login.jsp";
			response.sendRedirect(redirectURL);
		} else {
			name = user.getUsername();
		}
	%>

	<div id="sidebar-wrapper">
		<!-- Sidebar with logo and menu -->

		<h1 id="sidebar-title">
			<a href="#">BookStore Admin</a>
		</h1>

		<!-- Logo (221px wide) -->
		<a href="#"><img id="logo" src="../resources/images/logo.png"
			alt="Simpla Admin logo" /></a>
		<!-- Sidebar Profile links -->
		<div id="profile-links">
			Hello, <a href="#" title="Edit your profile"><%=name%></a>, you have
			<a href="#messages" rel="modal" title="3 Messages">3 Messages</a><br />
			<br /> <a href="#" title="View the Site">View the Site</a> | <a
				href="<%=request.getContextPath()%>/admin/logout">Logout</a>
		</div>

		<ul id="main-nav">
			<!-- Accordion Menu -->

			<li><a href="<%=request.getContextPath()%>/admin"
				class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
					Dashboard
			</a></li>

			<li><a href="#" id="usermanager" class="nav-top-item"> User
					management </a>
				<ul>
					<li><a id="user"
						href="<%=request.getContextPath()%>/admin/user/index.jsp">User</a></li>
					<li><a id="role"
						href="<%=request.getContextPath()%>/admin/role/index.jsp">Role</a></li>
					<!-- Add class "current" to sub menu items also -->
				</ul></li>

			<li><a href="#" id="itemmanagement" class="nav-top-item">
					Item management </a>
				<ul>
					<li><a id="category"
						href="<%=request.getContextPath()%>/admin/category/index.jsp">Category</a></li>
					<li><a id="books"
						href="<%=request.getContextPath()%>/admin/book/index">Books</a></li>
					<li><a id="publisher"
						href="<%=request.getContextPath()%>/admin/publisher/index.jsp?page=1">Publisher</a></li>
					<li><a id="author"
						href="<%=request.getContextPath()%>/admin/author/index.jsp?page=1">Author</a></li>
					<li><a id="store"
						href="<%=request.getContextPath()%>/admin/store/index.jsp">Store</a></li>
				</ul></li>
			<li><a href="#" id="ordermanagement" class="nav-top-item">
					Order management </a>
				<ul>
					<li><a id="reservation"
						href="<%=request.getContextPath()%>/admin/reservation/index">Reservation</a></li>
					<li><a id="order"
						href="<%=request.getContextPath()%>/admin/order/index">Order</a></li>
					<li><a id="paymentmethod"
						href="<%=request.getContextPath()%>/admin/paymentMethod/index.jsp">Payment
							method</a></li>
				</ul></li>

			<li><a href="#" class="nav-top-item"> Settings </a>
				<ul>
					<li><a href="#">General</a></li>
					<li><a href="#">Design</a></li>
					<li><a href="#">Your Profile</a></li>
					<li><a href="#">Users and Permissions</a></li>
				</ul></li>
		</ul>
		<!-- End #main-nav -->

	</div>
</div>
<script language="javascript">
	if (document.URL.toLowerCase().indexOf("/user") >= 0) {
		document.getElementById("user").setAttribute("class", "current");
		document.getElementById("usermanager").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/category") >= 0) {
		document.getElementById("category").setAttribute("class", "current");
		document.getElementById("itemmanagement").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/paymentmethod") >= 0) {
		document.getElementById("paymentmethod").setAttribute("class",
				"current");
		document.getElementById("ordermanagement").setAttribute("class",
				"nav-top-item current");
	}

	if (document.URL.toLowerCase().indexOf("/order") >= 0) {
		document.getElementById("order").setAttribute("class", "current");
		document.getElementById("ordermanagement").setAttribute("class",
				"nav-top-item current");
	}

	if (document.URL.toLowerCase().indexOf("/reservation") >= 0) {
		document.getElementById("reservation").setAttribute("class", "current");
		document.getElementById("ordermanagement").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/book", 22) >= 0) {
		document.getElementById("books").setAttribute("class", "current");
		document.getElementById("itemmanagement").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/store") >= 0) {
		document.getElementById("store").setAttribute("class", "current");
		document.getElementById("itemmanagement").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/role") >= 0) {
		document.getElementById("role").setAttribute("class", "current");
		document.getElementById("usermanager").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/publisher") >= 0) {
		document.getElementById("publisher").setAttribute("class", "current");
		document.getElementById("itemmanagement").setAttribute("class",
				"nav-top-item current");
	}
	if (document.URL.toLowerCase().indexOf("/author") >= 0) {
		document.getElementById("author").setAttribute("class", "current");
		document.getElementById("itemmanagement").setAttribute("class",
				"nav-top-item current");
	}
</script>
