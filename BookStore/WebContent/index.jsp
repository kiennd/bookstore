<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
<%
	if (request.getAttribute("newBooks") == null) {
		String redirectURL = "index";
		response.sendRedirect(redirectURL);
	}
%>
</head>
<body>
	<!-- Start Main Wrapper -->
	<div class="wrapper">
		<!-- Start Main Header -->
		<!-- Start Top Nav Bar -->
		<%@include file="topNavBar.jsp"%>
		<!-- End Top Nav Bar -->
		<%@include file="header.jsp"%>
		<!-- End Main Header -->
		<!-- Start Main Content Holder -->
		<section id="content-holder" class="container-fluid container">
		<section class="row-fluid"> <section class="span12 slider">
		<section class="main-slider">
		<div class="bb-custom-wrapper">
			<div id="bb-bookblock" class="bb-bookblock">
				<s:iterator value="newBooks">
					<div class="bb-item">
						<div class="bb-custom-content">
							<div class="slide-inner">
								<div class="span4 book-holder">
									<a href="<%=request.getContextPath()%>/detailBook?id=${id}"> <img
										src="images/books/${imageurl}" /></a>
									<div class="cart-price">
										<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
											class="price"> Gia : ${price} </span>
									</div>
								</div>
								<div class="span8 book-detail">
									<h2>
										<s:property value="title" />
									</h2>
									<strong class="title"><s:property value="author.name" /></strong>
									<span class="rating-bar"> <img
										src="images/raing-star2.png" alt="Rating Star" />
									</span> <a href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}" class="shop-btn">SHOP NOW</a>
									<div class="cap-holder">
										<p>
											<img src="images/image27.png" alt="Best Choice" align="right" />
											<c:out value="${fn:substring(description, 0, 200)}... " />
										</p>
										<a href="<%=request.getContextPath()%>/detailBook?id=${id}">Read More</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</s:iterator>

			</div>
		</div>
		<nav class="bb-custom-nav"> <a href="#" id="bb-nav-prev"
			class="left-arrow">Previous</a> <a href="#" id="bb-nav-next"
			class="right-arrow">Next</a> </nav> </section> <!-- end slide --> <span
			class="slider-bottom"><img src="images/slider-bg.png"
			alt="Shadow" /></span> </section> <section class="span12 wellcome-msg m-bottom first">
		<h2>WELCOME TO Hackintosh BookStore.</h2>
		<p>Offering a wide selection of books on thousands of topics at
			low prices to satisfy any book-lover!</p>
		</section> </section> 
		
		
		
		<section class="row-fluid features-books"> 
			<section class="span12 m-bottom">
				<div class="heading-bar">
					<h2>Sách bán chạy</h2>
					<span class="h-line"></span>
				</div>
				<div class="slider1">
					<s:iterator value="bestSellingBooks">
						<div class="slide">
							<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/books/${imageurl}" alt=""
								class="pro-img" /></a> <span class="title" style="height: 50px;"><a
								href="<%=request.getContextPath()%>/detailBook?id=${id}"><s:property value="title" /></a></span> <span
								class="rating-bar"><img src="images/rating-star.png"
								alt="Rating Star" /></span>
							<div class="cart-price">
								<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
									class="price">Gia: ${price} </span>
							</div>
						</div>
					</s:iterator>
				</div>
			</section>
		 </section>
		 
		 <section class="row-fluid features-books"> 
			<section class="span12 m-bottom">
				<div class="heading-bar">
					<h2>Sách Mới</h2>
					<span class="h-line"></span>
				</div>
				<div class="slider1"  style="height: 700px;">
					<s:iterator value="newBooks" >
						<div class="slide">
							<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/books/${imageurl}" alt=""
								class="pro-img" height="300" width="200" /></a> <span class="title" style="height: 50px;"><a
								href="<%=request.getContextPath()%>/detailBook?id=${id}"><s:property value="title" /></a></span> <span
								class="rating-bar"><img src="images/rating-star.png"
								alt="Rating Star" /></span>
							<div class="cart-price">
								<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
									class="price">Gia: ${price} </span>
							</div>
						</div>
					</s:iterator>
				</div>
			</section>
		 </section>
		 
		 
		 
		  <!-- End BX Slider holder --> <!-- Start Featured Author --> <section
			class="row-fluid m-bottom"> <section class="span9">
		<div class="heading-bar">
			<h2>TÁC GIẢ ĐƯỢC QUAN TÂM</h2>
			<span class="h-line"></span>
		</div>

		<div class="featured-author">
			<div class="left">
				<%-- 			${authorHightLight.imageLink} --%>
				<span class="author-img-holder"><a href="about-us.html"><img
						src="images/authors/${authorHightLight.imageLink}" alt=""
						height="150" width="150" /></a></span>
				<div class="author-det-box">
					<div class="ico-holder">
						<div id="socialicons" class="hidden-phone">
							<a id="social_linkedin" class="social_active" href="#"
								title="Visit Google Plus page"><span></span></a> <a
								id="social_facebook" class="social_active" href="#"
								title="Visit Facebook page"><span></span></a> <a
								id="social_twitter" class="social_active" href="#"
								title="Visit Twitter page"><span></span></a>
						</div>
					</div>
					<div class="author-det">
						<span class="title2">${authorHightLight.name}</span>
						<ul class="books-list">
							<div class="slider8">
								<s:iterator value="authorBooks">
									<div class="slide">
										<li><a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img
											src="images/books/${imageurl}" alt="" height="83" width="59" /></a></li>
									</div>
								</s:iterator>
							</div>
						</ul>
					</div>
				</div>
			</div>

			<div class="right">
				<s:iterator value="authorBooks" begin="0" end="0">
					<div class="current-book">
						<strong class="title"><a href="<%=request.getContextPath()%>/detailBook?id=${id}">${name}</a></strong>
						<p>${fn:substring(description, 0, 120)}...</p>
						<div class="cart-price">
							<a href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}" class="cart-btn2">Add to Cart</a> <span
								class="price">Gía: ${price}</span>
						</div>
					</div>
					<div class="c-b-img">
						<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/books/${imageurl}"
							alt="" /></a>
					</div>
				</s:iterator>
			</div>
		</div>
		</section> <%-- <section class="span3 best-sellers">
		<div class="heading-bar">
			<h2>Best Sellers</h2>
			<span class="h-line"></span>
		</div>
		<div class="slider2">
			<div class="slide">
				<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/image15.jpg" alt="" /></a>
				<div class="slide2-caption">
					<div class="left">
						<span class="title"><a href="<%=request.getContextPath()%>/detailBook?id=${id}">Thousand
								Splendid Miles</a></span> <span class="author-name">by Khalid
							Housseini</span>
					</div>
					<div class="right">
						<span class="price">$139.50</span> <span class="rating-bar"><img
							src="images/rating-star.png" alt="Rating Star" /></span>
					</div>
				</div>
			</div>
			<div class="slide">
				<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/image15.jpg" alt="" /></a>
				<div class="slide2-caption">
					<div class="left">
						<span class="title"><a href="<%=request.getContextPath()%>/detailBook?id=${id}">Thousand
								Splendid Miles</a></span> <span class="author-name">by Khalid
							Housseini</span>
					</div>
					<div class="right">
						<span class="price">$139.50</span> <span class="rating-bar"><img
							src="images/rating-star.png" alt="Rating Star" /></span>
					</div>
				</div>
			</div>
			<div class="slide">
				<a href="<%=request.getContextPath()%>/detailBook?id=${id}"><img src="images/image15.jpg" alt="" /></a>
				<div class="slide2-caption">
					<div class="left">
						<span class="title"><a href="<%=request.getContextPath()%>/detailBook?id=${id}">Thousand
								Splendid Miles</a></span> <span class="author-name">by Mr. Khalid </span>
					</div>
					<div class="right">
						<span class="price">$139.50</span> <span class="rating-bar"><img
							src="images/rating-star.png" alt="Rating Star" /></span>
					</div>
				</div>
			</div>
		</div>
		</section> --%> </section> <!-- End Featured Author --> <section class="row-fluid m-bottom">
		<!-- Start Blog Section --> 
		
		
		
		
		
		
	<!-- End Testimonials Section --> </section> </section>
		<!-- End Main Content Holder -->
		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
</body>
</html>
