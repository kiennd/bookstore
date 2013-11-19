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
		        <h2>Contact Us</h2>
		        <span class="h-line"></span> </div>
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
		        
		        <!-- Start Map Section -->
		        <section class="map-holder">
		        	<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.mu/?ie=UTF8&amp;ll=-20.234496,57.603722&amp;spn=0.093419,0.169086&amp;t=m&amp;z=13&amp;output=embed"></iframe>
		        </section>
		        <!-- Start Map Section -->
		        
		        <div class="span6 c-form-holder first">
		        	<!-- Start Contact form Section -->
		        <form class="form-horizontal">
		          <div class="control-group">
		            <label class="control-label" for="inputEmail">Name <sup>*</sup></label>
		            <div class="controls">
		              <input type="text" id="inputEmail" placeholder="">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Email <sup>*</sup></label>
		            <div class="controls">
		              <input type="password" id="inputPassword" placeholder="">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Subject <sup>*</sup></label>
		            <div class="controls">
		              <input type="password" id="inputPassword" placeholder="">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Message <sup>*</sup></label>
		            <div class="controls">
		              <textarea name="" cols="2" rows="20"></textarea>
		            </div>
		          </div>
		          <div class="control-group">
		            <div class="controls">
		              <button type="submit" class="more-btn2">SAND REQUEST</button>
		            </div>
		          </div>
		        </form>
		        <!-- End Contact form Section -->
		        </div>
		        <div class="span6">
		        	<strong>Contact Info</strong>
		        	<p>Office No. 23, 1st Floor,<br /> Media City, Dubai, <br />UAE.</p>
		            <p>Phone: (123) 456-7890 <br />Fax: +08 (123) 456-7890 <br />Email: <a href="#">contact@companyname.com</a> <br />Web: <a href="#">companyname.com</a></p>
		            <strong>Dummy Text</strong>
		            <p>It is a long established fact that a reader will be 
		distracted by the readable content of a page when 
		looking at its layout.</p>
		        </div>
		        
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