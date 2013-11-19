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
		        <!-- Start Main Content -->
		        <section class="span9 first">
		        	<!-- Start Ad Slider Section -->
					<div class="blog-sec-slider">
		                <div class="slider5">
		                  <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
		                  <div class="slide"><a href="#"><img src="images/image36.jpg" alt=""/></a></div>
		                  <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
		                </div>
		            </div>
		            <!-- End Ad Slider Section -->
		            
		            <!-- Strat Book Detail Section -->
		            <section class="b-detail-holder">
		            	<article class="title-holder">
		                	<div class="span6">
		                    	<h4><strong>The Kite Runner</strong> by Khalid Hosseini</h4>
		                    </div>
		                    <div class="span6 book-d-nav">
		                    	<ul>
		                        	<li><a href="#">2 Reviews</a></li>
		                            <li><i class="icon-envelope"></i><a href="#">  Email to a Friend</a></li>
		                        </ul>
		                    </div>
		                </article>
		                <div class="book-i-caption">
		                <!-- Strat Book Image Section -->
		                	<div class="span6 b-img-holder">
		                        <span class='zoom' id='ex1'> <img src='images/image26.jpg' height="219" width="300" id='jack' alt=''/></span>
		                    </div>
		                <!-- Strat Book Image Section -->
		                
		                <!-- Strat Book Overview Section -->    
		                    <div class="span6">
		                    	<strong class="title">Quick Overview</strong>
		                    	<p>Vestibulum a velit at erat adipiscing volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget neque velit, suscipit volutpat ligula.</p>
		                        <p>Quisque diam arcu, dignissim nec molestie sed, pellentesque a augue. Nunc sed felis libero, vitae imperdiet risus in feugiat lectus vitae elit euismod rhoncus. Suspendisse potenti. </p>
		                   		<p>Availability: <a href="#">In stock</a></p>
		                        <div class="comm-nav">
		                        	<strong class="title2">Quantity</strong>
		                            <ul>
		                            	<li><input name="" type="text" /></li>
		                                <li class="b-price">$68.00</li>
		                                <li><a href="cart.html" class="more-btn">+ Add to Cart</a></li>
		                            </ul>
		                            <a href="#">Add to Wishlist</a>
		                        </div>
		                   </div>
		                <!-- End Book Overview Section -->
		                </div>
		                
		                <!-- Start Book Summary Section -->
		                	<div class="tabbable">
		                      <ul class="nav nav-tabs">
		                        <li class="active"><a href="#pane1" data-toggle="tab">Book Summary</a></li>
		                        <li><a href="#pane2" data-toggle="tab">Additional Information</a></li>
		                      </ul>
		                      <div class="tab-content">
		                        <div id="pane1" class="tab-pane active">
		                          <p>Sed molestie semper ligula vitae pellentesque duis laoreet erat a pretium pulvinar, justo nisi fermentum risus, sed condimentum nisl elit vel risus. Vivamus felis dolor, consectetur vel condimentum sit amet, iaculis in orci. </p>
		                          <p>Phasellus sed vehicula justo nunc quis erat vel ante ornare pulvinar cras tristique facilisis tincidunt quisque felis erat iaculis at fringilla vitae rutrum id magna. Nam pharetra scelerisque justo at vehicula aliquam erat volutpat.
		Quisque vulputate justo eu mattis interdum magna erat porta risus tincidunt </p>
		                        </div>
		                        <div id="pane2" class="tab-pane">
		                        <h4>Pane 2 Content</h4>
		                          <p> and so on ...</p>
		                        </div>
		                      </div><!-- /.tab-content -->
		                    </div><!-- /.tabbable -->
		                <!-- End Book Summary Section -->
		            
		            <!-- Start BX Slider holder -->  
		            <section class="related-book">
		            <div class="heading-bar">
		            	<h2>Related Books</h2>
		                <span class="h-line"></span>
		            </div>
		            <div class="slider6">
		                      <div class="slide">
		                        <a href="book-detail.html"><img src="images/image05.jpg" alt="" class="pro-img"/></a>
		                        <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
		                        <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                        <div class="cart-price">
		                            <a class="cart-btn2" href="cart.html">Add to Cart</a>
		                            <span class="price">$129.90</span>
		                        </div>
		                      </div>
		                      <div class="slide">
		                        <a href="book-detail.html"><img src="images/image06.jpg" alt="" class="pro-img"/></a>
		                        <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
		                        <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                        <div class="cart-price">
		                            <a class="cart-btn2" href="cart.html">Add to Cart</a>
		                            <span class="price">$129.90</span>
		                        </div>
		                      </div>
		                      <div class="slide">
		                        <a href="book-detail.html"><img src="images/image07.jpg" alt="" class="pro-img"/></a>
		                        <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
		                        <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                        <div class="cart-price">
		                            <a class="cart-btn2" href="cart.html">Add to Cart</a>
		                            <span class="price">$129.90</span>
		                        </div>
		                      </div>
		                      <div class="slide">
		                        <a href="book-detail.html"><img src="images/image08.jpg" alt="" class="pro-img"/></a>
		                        <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
		                        <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                        <div class="cart-price">
		                            <a class="cart-btn2" href="cart.html">Add to Cart</a>
		                            <span class="price">$129.90</span>
		                        </div>
		                      </div>
		                    </div>
		               </section>
		            <!-- End BX Slider holder -->
		            
		            <!-- Stsrt Customer Reviews Section -->
		            	<section class="reviews-section">
		                	<figure class="left-sec">
		                    	<div class="r-title-bar">
		                        	<strong>Customer Reviews</strong>
		                        </div>
		                        <ul class="review-list">
		                        	<li>
		                            	<span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                            	<em class="">The Kite Runner</em>
		                            	<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed, ornare sed elit. Curabitur mollis, justo sit amet fermentum ” Review by Bookshoppe’</p>
		                            </li>
		                            <li>
		                            	<span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                            	<em class="">The Kite Runner</em>
		                            	<p>“ Suspendisse tortor lacus, suscipit eget pharetra sed, ornare sed elit. Curabitur mollis, justo sit amet fermentum ” Review by Bookshoppe’</p>
		                            </li>
		                        </ul>
		                        <a href="#" class="grey-btn">Write Your Own Review</a>
		                    </figure>
		                	<figure class="right-sec">
		                    	<div class="r-title-bar">
		                        	<strong>Write Your Own Review</strong>
		                        </div>
		                        <ul class="review-f-list">
		                        	<li>
		                            	<label>Your name *</label>
		                                <input name="" type="text" />
		                            </li>
		                            <li>
		                            	<label>Summary of your review *</label>
		                            	<input name="" type="text" />
		                            </li>
		                            <li>
		                            	<label>Your review *</label>
		                                <textarea name="" cols="2" rows="20"></textarea>
		                            </li>
		                            <li>
		                            	<label>How do you rate this book? *</label>
		                                <div class="rating-list">
		                                	<div class="rating-box">
		                                    	<label class="radio">
		                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                                        Star 1
		                                    </label>
		                                    </div>
		                                    <label class="radio">
		                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                                        Star 2
		                                    </label>
		                                    <label class="radio">
		                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                                        Star 3
		                                    </label>
		                                    <label class="radio">
		                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                                        Star 4
		                                    </label>
		                                    <label class="radio">
		                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                                        Star 5
		                                    </label>
		                                </div>
		                            </li>
		                        </ul>
		                        <a href="#" class="grey-btn left-btn">Write Your Own Review</a>
		                    </figure>
		                </section>
		            <!-- End Customer Reviews Section -->
		            </section>
		            <!-- Strat Book Detail Section -->
		        </section>
		        <!-- End Main Content -->
		        
		        <!-- Start Main Side Bar -->
		        <section class="span3">
		        	<div class="side-holder">
		            	<article class="banner-ad"><img src="images/image20.jpg" alt="Banner Ad" /></article>
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
		            <!-- End Shop by Section -->
		            
		            <!-- Start Latest Reviews Section -->
		            <div class="side-holder">
		            	<article class="l-reviews">
		                	<h2>Latest Reviews</h2>
		                    <div class="side-inner-holder">
		                    	<article class="r-post">
		                        	<div class="r-img-title">
		                            	<img src="images/image21.jpg" />
		                            	<div class="r-det-holder">
		                                	<strong class="r-author"><a href="book-detail.html">The Kite Runner</a></strong>
		                                	<span class="r-by">by Khalid Hoessini</span>
		                                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                                </div>
		                            </div>
		                            <span class="r-type">Vivamus bibendum massa</span>
		                            <p>“ Suspendisse tortor lacus, suscipit eget pharetra sed, ornare sed elit. Curabitur mollis, justo sit amet fermentum ” </p>
		                            <span class="r-author">Review by BookShoppe’</span>
		                        </article>
		                        <article class="r-post">
		                        	<div class="r-img-title">
		                            	<img src="images/image21.jpg" />
		                            	<div class="r-det-holder">
		                                	<strong class="r-author"><a href="book-detail.html">The Kite Runner</a></strong>
		                                	<span class="r-by">by Khalid Hoessini</span>
		                                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
		                                </div>
		                            </div>
		                            <span class="r-type">Vivamus bibendum massa</span>
		                            <p>“ Suspendisse tortor lacus, suscipit eget pharetra sed, ornare sed elit. Curabitur mollis, justo sit amet fermentum ” </p>
		                            <span class="r-author">Review by BookShoppe’</span>
		                        </article>
		                    </div>
		                </article>
		            </div>
		            <!-- End Latest Reviews Section -->
		            
		            <!-- Start Price Range Section -->
		            <div class="side-holder">
		            	<article class="price-range">
		                	<h2>Price Range</h2>
		                    <div class="side-inner-holder">
		                    	<p>Select the price range for better search</p>                    	
		                        <div id="slider-range"></div>
		                        <p> <input type="text" id="amount" class="r-input"> </p>
		                    </div>
		                </article>
		            </div>
		            <!-- End Price Range Section -->
		            
		            <!-- Start Community Poll Section -->
		            <div class="side-holder">
		            	<article class="price-range">
		                	<h2>Community Poll</h2>
		                    <div class="side-inner-holder">
		                    	<p>Who is your favourite American author?</p>
		                    	<label class="radio">
		                        	<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                        	Jane Austin
		                        </label>
		                        <label class="radio">
		                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                            William Blake
		                        </label>
		                        <label class="radio">
		                            <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                            Keith Urban
		                        </label>
		                        <label class="radio">
		                            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                            Anna Smith
		                        </label>
		                        <a href="#" class="vote-btn">Vote</a>
		                    </div>
		                </article>
		            </div>
		            <!-- End Community Poll Section -->
		            
		        </section>
		        <!-- End Main Side Bar -->
		    </section>
		  </section>
		  <!-- End Main Content Holder -->


		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file = "footerjs.jsp" %>
	<!-- End Main Wrapper -->

</body>
</html>