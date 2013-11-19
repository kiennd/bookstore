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
			<h2>Grid View</h2>
			<span class="h-line"></span>
		</div>
		<!-- Start Main Content --> <section class="span9 first"> <!-- Start Ad Slider Section -->
		<div class="blog-sec-slider">
			<div class="slider5">
				<div class="slide">
					<a href="#"><img src="images/image22.jpg" alt="" /></a>
				</div>
				<div class="slide">
					<a href="#"><img src="images/image22.jpg" alt="" /></a>
				</div>
				<div class="slide">
					<a href="#"><img src="images/image22.jpg" alt="" /></a>
				</div>
			</div>
		</div>
		<!-- End Ad Slider Section --> <!-- Start Grid View Section -->
		<div class="product_sort">
			<div class="row-1">
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
			</div>
			<div class="row-2">
				<span class="left">Items 1 to 9 of 15 total</span>
				<ul class="product_view">
					<li>View as:</li>
					<li><a class="grid-view" href="grid-view.html">Grid View</a></li>
					<li><a class="list-view" href="list-view.html">List View</a></li>
				</ul>
			</div>
		</div>
		<section class="grid-holder features-books"> <figure
			class="span4 slide"> <a href="book-detail.html"><img
			src="images/image25.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image38.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image39.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure>
		<hr />
		<figure class="span4 slide first"> <a href="book-detail.html"><img
			src="images/image40.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image41.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="about-us.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image25.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure>
		<hr />
		<figure class="span4 slide first"> <a href="book-detail.html"><img
			src="images/image39.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image42.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> <figure class="span4 slide"> <a href="book-detail.html"><img
			src="images/image38.jpg" alt="" class="pro-img" /></a> <span
			class="title"><a href="book-detail.html">A Walk Across The
				Sun</a></span> <span class="rating-bar"><img
			src="images/rating-star.png" alt="Rating Star" /></span>
		<div class="cart-price">
			<a class="cart-btn2" href="cart.html">Add to Cart</a> <span
				class="price">$129.90</span>
		</div>
		</figure> </section>
		<div class="blog-footer">
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<li class="active"><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>

			<ul class="product_view">
				<li>View as:</li>
				<li><a class="grid-view" href="cart.html">Grid View</a></li>
				<li><a class="list-view" href="list-view.html">List View</a></li>
			</ul>
		</div>
		<!-- End Grid View Section --> </section> <!-- End Main Content --> <!-- Start Main Side Bar -->
		<section class="span3">
		<div class="side-holder">
			<article class="banner-ad">
			<img src="images/image20.jpg" alt="Banner Ad" /></article>
		</div>

		<!-- Start Shop by Section -->
		<div class="side-holder">
			<article class="shop-by-list">
			<h2>Shop by</h2>
			<div class="side-inner-holder">
				<strong class="title">Category</strong>
				<ul class="side-list">
					<li><a href="grid-view.html">Fiction (15)</a></li>
					<li><a href="grid-view.html">Healthcare (15)</a></li>
					<li><a href="grid-view.html">Technology (15)</a></li>
					<li><a href="grid-view.html">Science(15)</a></li>
				</ul>
				<strong class="title">Price</strong>
				<ul class="side-list">
					<li><a href="#">$0.00 - $10,00.00 (13)</a></li>
					<li><a href="#">$10,00.00 - $20,00.00 (2)</a></li>
				</ul>
				<strong class="title">Author</strong>
				<ul class="side-list">
					<li><a href="book-detail.html">Khalid Hoessini (9)</a></li>
					<li><a href="book-detail.html">William Blake (2)</a></li>
					<li><a href="book-detail.html">Anna Kathrinena (1)</a></li>
					<li><a href="book-detail.html">Gray Alvin (3)</a></li>
				</ul>
			</div>
			</article>
		</div>
		<!-- End Shop by Section --> <!-- Start Latest Reviews Section -->
		<div class="side-holder">
			<article class="l-reviews">
			<h2>Latest Reviews</h2>
			<div class="side-inner-holder">
				<article class="r-post">
				<div class="r-img-title">
					<img src="images/image21.jpg" />
					<div class="r-det-holder">
						<strong class="r-author"><a href="book-detail.html">The
								Kite Runner</a></strong> <span class="r-by">by Khalid Hoessini</span> <span
							class="rating-bar"><img src="images/rating-star.png"
							alt="Rating Star" /></span>
					</div>
				</div>
				<span class="r-type">Vivamus bibendum massa</span>
				<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed,
					ornare sed elit. Curabitur mollis, justo sit amet fermentum ”</p>
				<span class="r-author">Review by BookShoppe’</span> </article>
				<article class="r-post">
				<div class="r-img-title">
					<img src="images/image21.jpg" />
					<div class="r-det-holder">
						<strong class="r-author"><a href="book-detail.html">The
								Kite Runner</a></strong> <span class="r-by">by Khalid Hoessini</span> <span
							class="rating-bar"><img src="images/rating-star.png"
							alt="Rating Star" /></span>
					</div>
				</div>
				<span class="r-type">Vivamus bibendum massa</span>
				<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed,
					ornare sed elit. Curabitur mollis, justo sit amet fermentum ”</p>
				<span class="r-author">Review by BookShoppe’</span> </article>
			</div>
			</article>
		</div>
		<!-- End Latest Reviews Section --> <!-- Start Price Range Section -->
		<div class="side-holder">
			<article class="price-range">
			<h2>Price Range</h2>
			<div class="side-inner-holder">
				<p>Select the price range for better search</p>
				<div id="slider-range"></div>
				<p>
					<input type="text" id="amount" class="r-input">
				</p>
			</div>
			</article>
		</div>
		<!-- End Price Range Section --> <!-- Start Community Poll Section -->
		<div class="side-holder">
			<article class="price-range">
			<h2>Community Poll</h2>
			<div class="side-inner-holder">
				<p>Who is your favourite American author?</p>
				<label class="radio"> <input type="radio"
					name="optionsRadios" id="optionsRadios1" value="option1" checked>
						Jane Austin </label> <label class="radio"> <input type="radio"
					name="optionsRadios" id="optionsRadios2" value="option2">
						William Blake </label> <label class="radio"> <input type="radio"
					name="optionsRadios" id="optionsRadios1" value="option1" checked>
						Keith Urban </label> <label class="radio"> <input type="radio"
					name="optionsRadios" id="optionsRadios2" value="option2">
						Anna Smith </label> <a href="#" class="vote-btn">Vote</a>
			</div>
			</article>
		</div>
		<!-- End Community Poll Section --> </section> <!-- End Main Side Bar --> </section> </section>
		<!-- End Main Content Holder -->


		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>