<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.*"%>

<%@ page import="java.util.*, java.lang.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>

<body>
	<!-- Start Main Wrapper -->
	<%
		Vector<Book> ls = (Vector<Book>) request
				.getAttribute("booksResult");
		int start = (Integer) request.getAttribute("startIndex");
		int end = (Integer) request.getAttribute("endIndex");
		int categoryid = (Integer) request.getAttribute("categoryid");
		boolean isFirst = true;
		Vector<Book> newBooks = (Vector<Book>) request
				.getAttribute("newBooks");
		Vector<Author> authors = (Vector<Author>) request
				.getAttribute("authors");
	%>
	<div class="wrapper">
		<!-- Start Main Header -->
		<!-- Start Top Nav Bar -->
		<%@include file="topNavBar.jsp"%>
		<!-- End Top Nav Bar -->
		<%@include file="header.jsp"%>
		<!-- End Main Header -->

		<!-- Start Main Content Holder -->
		<section id="content-holder" class="container-fluid container">
		<section class="row-fluid">
		<div class="heading-bar">
			<h2>Category List</h2>
			<span class="h-line"></span>
		</div>
		<!-- Start Main Content --> <section class="span9 first"> <!-- Start Ad Slider Section -->
		<div class="blog-sec-slider">
			<div class="slider1">
				<%-- <%for(int i = 0;i<newBooks.size();i++){ 
					Book b = newBooks.elementAt(i);				
				%> --%>
				<%-- 					<div class="slide">
						<a href="#"><img src="images/books/<%=b.getImageurl() %>" alt="" /></a>
					</div> --%>
				<div class="slide">

					<li class="booktable_list"
						style="overflow: hidden; float: right; width: 170px;"><a
						href="/book/Sach_hay_cho_ngay_20_10/page_1.html"
						class="booktable_list_title" title="Sách hay cho ngày 20/11">Sách
							hay cho ngày 20/11</a> <a
						href="/book/Sach_hay_cho_ngay_20_10/page_1.html"
						class="booktable_list)img" title="Sách hay cho ngày 20/11"
						rel="nofollow"><img src="images/1383878002.png"
							alt="Sách hay cho ngày 20/11"></a></li>

				</div>
				<div class="slide">
					<li class="booktable_list"
						style="overflow: hidden; float: right; width: 170px;"><a
						href="/book/Sach-du-ky/page_1.html" class="booktable_list_title"
						title="Sách du ký">Sách du ký</a> <a
						href="/book/Sach-du-ky/page_1.html" class="booktable_list)img"
						title="Sách du ký" rel="nofollow"><img
							src="images/Sach-du-ky.png" alt="Sách du ký"></a></li>
				</div>
				<%-- 	<%} %> --%>
			</div>
		</div>
		<!-- End Ad Slider Section --> <!-- Start Grid View Section -->
		<div class="product_sort">
			<%-- <div class="row-1">
				<div class="left">
					<span class="s-title">Sort by</span> <span class="list-nav">
						<select name="">
							<option>Position</option>
							<option>Position 2</option>
							<option>Position 3</option>
							<option>Position 4</option>
					</select>
					</span>
				</div>
				<div class="right">
					<span>Show</span> <span> <select name="">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
					</select>
					</span> <span>per page</span>
				</div>
			</div> --%>
			<div class="row-2">
				<span class="left">Items <%=start + 1%> to <%=end + 1%> of <%=ls.size()%>
					total
				</span>
				<ul class="product_view">
					<li>View as:</li>
					<li><a class="grid-view" href="grid-view.html">Grid View</a></li>
					<li><a class="list-view" href="list-view.html">List View</a></li>
				</ul>
			</div>
		</div>
		<section class="grid-holder features-books"> <%
 	for (int i = start; i <= end; i++) {
 		Book b = ls.elementAt(i);
 %> <%-- <s:iterator value = "booksResult" status="stat"  begin="%{startIndex}"
									end="%{endIndex}"> --%> <%
 	if (isFirst) {
 			out.print("<figure class=\"span4 slide first\"> ");
 			isFirst = false;
 		} else {
 			out.print("<figure class=\"span4 slide \">");
 		}
 %> <a href="book-detail.html"> <img
			src="images/books/<%=b.getImageurl()%>" alt="" /></a> <span
			class="title" style="height: 50px;"> <a
			href="book-detail.html"><%=b.getTitle()%></a>
		</span> <span class="rating-bar"><img src="images/rating-star.png"
			alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
				class="price">Gia: <%=b.getPrice()%></span>
		</div>
		</figure> <%-- <s:if test="%{#stat.count%3==0}">
					<hr />
				</s:if>
				 --%> <%
 	if ((i + 1) % 3 == 0) {
 			isFirst = true;
 			out.print("<hr />");
 		}

 	}
 %> <%-- </s:iterator> --%> </section>
		<hr />

		<div class="blog-footer">
			<div class="pagination">
				<ul>
					<s:if test="%{page>1}">
						<li><a
							href="${actionName}?categoryid=${categoryid}&title=${title}&page=1"
							title="First Page">&laquo; First</a></li>
						<li><a
							href="${actionName}?categoryid=${categoryid}&title=${title}&page=<s:property value="%{page-1}" />"
							class="number" title="1"><s:property value="%{page-1}" /></a></li>
					</s:if>
					<li><a
						href="${actionName}?categoryid=${categoryid}&title=${title}&page=${page}"
						class="number current" title="1">${page}</a></li>

					<s:if test="%{page<totalPage}">
						<li><a
							href="${actionName}?categoryid=${categoryid}&title=${title}&page=<s:property value="%{page+1}" />"
							class="number" title="1"><s:property value="%{page+1}" /></a></li>
						<li><a
							href="${actionName}?categoryid=${categoryid}&title=${title}&page=${totalPage}"
							title="Last Page">Last &raquo;</a></li>
					</s:if>
				</ul>
			</div>
			<!-- End .pagination -->

			<ul class="product_view">
				<li>View as:</li>
				<li><a class="grid-view" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Grid View</a></li>
				<li><a class="list-view" href="list-view.html">List View</a></li>
			</ul>
		</div>
		<!-- End Grid View Section --> </section> <!-- End Main Content --> <!-- Start Main Side Bar -->
		<section class="span3">

		<!-- Start Shop by Section -->
		<div class="side-holder">
			<article class="shop-by-list">
			<h2>Shop by</h2>
			<div class="side-inner-holder">
				<strong class="title">Category</strong>
				<ul class="side-list">
					<%
						for (int i = 0; i < categories.size(); i++) {
							Category c = categories.elementAt(i);
					%>
					<li><a href="filter?categoryid=<%=c.getId()%>"><%=c.getName()%></a></li>
					<%
						}
					%>
				</ul>
				<strong class="title">Price</strong>
				<ul class="side-list">
					<li><a href="filter?priceMin=100000&priceMax=200000">$100.000
							- $200.000</a></li>
					<li><a href="filter?priceMin=200000&priceMax=300000">$200.000
							- $300.000</a></li>
					<li><a href="filter?priceMin=300000&priceMax=400000">$400.000
							- $500.000</a></li>
					<li><a href="filter?priceMin=400000&priceMax=500000">$500.000
							- $600.000</a></li>
				</ul>
				<%-- 				<strong class="title">Author</strong>
				<ul class="side-list">
					<%for(int i=0;i< (authors.size()<6?authors.size():6);i++) {%>
					<li><a href="book-detail.html"><%=authors.elementAt(i).getName() %></a></li>
					<%} %>
				</ul> --%>
			</div>
			</article>
		</div>
		</section> <!-- End Main Side Bar --> </section> </section>
		<!-- End Main Content Holder -->


		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>