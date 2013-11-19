<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
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
		<section class="row-fluid">
		<div class="heading-bar">
			<h2>Book Detail</h2>
			<span class="h-line"></span>
		</div>
		<!-- Start Main Content --> <section class="span9 first"> <!-- Start Ad Slider Section -->

		<!-- End Ad Slider Section --> <!-- Strat Book Detail Section --> <section
			class="b-detail-holder"> <article class="title-holder">
		<div class="span6">
			<h4>
				<strong>${bookBean.title}</strong> by ${bookBean.author.name}
			</h4>
		</div>
		<div class="span6 book-d-nav">
			<ul>
				<li><a href="#">2 Reviews</a></li>
				<li><i class="icon-envelope"></i><a href="#"> Email to a
						Friend</a></li>
			</ul>
		</div>
		</article>
		<div class="book-i-caption">
			<!-- Strat Book Image Section -->
			<div class="span6 b-img-holder">
				<span class='zoom' id='ex1'> <img
					src='images/books/${bookBean.imageurl}' height="219" width="300"
					id='jack' alt='' /></span>
			</div>
			<!-- Strat Book Image Section -->

			<!-- Strat Book Overview Section -->
			<div class="span6">
				<strong class="title">Thông tin sách</strong>
				<P>${bookBean.description}</P>
				<p>
					Availability: <a href="#">In stock</a>
				</p>
				<div class="comm-nav">
					<strong class="title2">Quantity</strong>
					<ul>
						<li><input name="" type="text" /></li>
						<li class="b-price">${bookBean.price}</li>
						<li><a href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}" class="more-btn">+ Add to Cart</a></li>
					</ul>
					<a href="#">Add to Wishlist</a>
				</div>
			</div>
			<!-- End Book Overview Section -->
		</div>

		<!-- Start Book Summary Section -->
		<div class="tabbable">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#pane1" data-toggle="tab">Book
						Summary</a></li>
				<li><a href="#pane2" data-toggle="tab">Additional
						Information</a></li>
			</ul>
			<div class="tab-content">
				<div id="pane1" class="tab-pane active">
					<p>${bookBean.author.description}</p>
				</div>
				<div id="pane2" class="tab-pane">
					<h4>Pane 2 Content</h4>
					<p>and so on ...</p>
				</div>
			</div>
			<!-- /.tab-content -->
		</div>
		<!-- /.tabbable --> <!-- End Book Summary Section --> <!-- Start BX Slider holder -->
		<section class="related-book">
		<div class="heading-bar">
			<h2>Related Books</h2>
			<span class="h-line"></span>
		</div>
		<div class="slider6">
			<div class="slide">
				<s:iterator value="authorBooks" begin="0" end="0">
					<a
						href="<%=request.getContextPath()%>/detailBook?id=<s:property value="id" />"><img
						src='images/books/${imageurl}' alt="Edit" /></a>
					<span class="title"><a href="book-detail.jsp">${title}</a></span>
					<span class="rating-bar"><img src="images/rating-star.png"
						alt="Rating Star" /></span>
					<div class="cart-price">
						<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
							class="price">${price}</span>
					</div>
				</s:iterator>
			</div>
			<div class="slide">
				<s:iterator value="authorBooks" begin="1" end="1">
					<a
						href="<%=request.getContextPath()%>/detailBook?id=<s:property value="id" />"><img
						src='images/books/${imageurl}' alt="Edit" /></a>
					<span class="title"><a href="book-detail.jsp">${title}</a></span>
					<span class="rating-bar"><img src="images/rating-star.png"
						alt="Rating Star" /></span>
					<div class="cart-price">
						<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
							class="price">${price}</span>
					</div>
				</s:iterator>
			</div>
			<div class="slide">
				<s:iterator value="authorBooks" begin="2" end="2">
					<a
						href="<%=request.getContextPath()%>/detailBook?id=<s:property value="id" />"><img
						src='images/books/${imageurl}' alt="Edit" /></a>
					<span class="title"><a href="book-detail.jsp">${title}</a></span>
					<span class="rating-bar"><img src="images/rating-star.png"
						alt="Rating Star" /></span>
					<div class="cart-price">
						<a class="cart-btn2" href="<%=request.getContextPath()%>/addtocart.jsp?id=${id}">Add to Cart</a> <span
							class="price">${price}</span>
					</div>
				</s:iterator>
			</div>

		</div>
		</section> <!-- End BX Slider holder --> <!-- Stsrt Customer Reviews Section -->
		<section class="reviews-section"> <figure class="left-sec">
		<div class="r-title-bar">
			<strong>Customer Reviews</strong>
		</div>
		<ul class="review-list">
			<li><span class="rating-bar"><img
					src="images/books/${bookBean.imageurl}" width="50" height="50" alt="Rating Star" /></span> <em class="">${bookBean.title }</em>
				<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed,
					ornare sed elit. Curabitur mollis, justo sit amet fermentum ”
					Review by Bookshoppe’</p></li>
			<li><span class="rating-bar"><img
					src="images/rating-star.png" alt="Rating Star" /></span> <em class="">${bookBean.title }</em>
				<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed,
					ornare sed elit. Curabitur mollis, justo sit amet fermentum ”
					Review by Bookshoppe’</p></li>
		</ul>
		<a href="#" class="grey-btn">Write Your Own Review</a> </figure> <figure
			class="right-sec">
		<div class="r-title-bar">
			<strong>Write Your Own Review</strong>
		</div>
		<ul class="review-f-list">
			<li><label>Your name *</label> <input name="" type="text" /></li>
			<li><label>Summary of your review *</label> <input name=""
				type="text" /></li>
			<li><label>Your review *</label> <textarea name="" cols="2"
					rows="20"></textarea></li>
			<li><label>How do you rate this book? *</label>
				<div class="rating-list">
					<div class="rating-box">
						<label class="radio"> <input type="radio"
							name="optionsRadios" id="optionsRadios1" value="option1" checked>
								Star 1 </label>
					</div>
					<label class="radio"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="option2">
							Star 2 </label> <label class="radio"> <input type="radio"
						name="optionsRadios" id="optionsRadios1" value="option1" checked>
							Star 3 </label> <label class="radio"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="option2">
							Star 4 </label> <label class="radio"> <input type="radio"
						name="optionsRadios" id="optionsRadios2" value="option2">
							Star 5 </label>
				</div></li>
		</ul>
		<a href="#" class="grey-btn left-btn">Write Your Own Review</a> </figure> </section> <!-- End Customer Reviews Section -->
		</section> <!-- Strat Book Detail Section --> </section> <!-- End Main Content --> <!-- Start Main Side Bar -->
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
				
			</div>
			</article>
		</div>
		<!-- End Shop by Section --> <!-- Start Latest Reviews Section -->
		</section> <!-- End Main Side Bar --> </section> </section>
		<!-- End Main Content Holder -->


		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>