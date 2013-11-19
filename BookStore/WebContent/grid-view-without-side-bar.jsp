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
			        	<h2>Grid View Without Side Bar</h2>
			            <span class="h-line"></span>
			        </div>
			        <!-- Start Main Content -->
			        <section class="span12 first">
			        	<!-- Start Ad Slider Section -->
						<div class="blog-sec-slider">
			                <div class="slider7">
			                  <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
			                  <div class="slide"><a href="#"><img src="images/image36.jpg" alt=""/></a></div>
			                  <div class="slide"><a href="#"><img src="images/image22.jpg" alt=""/></a></div>
			                </div>
			            </div>
			            <!-- End Ad Slider Section -->
			            
			            <!-- Start Grid View Section -->
			            <div class="product_sort">
			                <div class="row-1">
			                	<div class="left">
			                    	<span class="s-title">Sort by</span>
			                        <span class="list-nav">
			                        	<select name="">
			                            	<option>Position</option>
			                                <option>Position 2</option>
			                                <option>Position 3</option>
			                                <option>Position 4</option>
			                            </select>
			                        </span>
			                    </div>
			                    <div class="right">
			                    	<span>Show</span>
			                        <span>
			                        	<select name="">
			                            	<option>1</option>
			                                <option>2</option>
			                                <option>3</option>
			                                <option>4</option>
			                            </select>
			                        </span>
			                        <span>per page</span>
			                    </div>
			                </div>
			            	<div class="row-2">
			                	<span class="left">Items 1 to 9 of 15 total</span>
			                	<ul class="product_view">
			                		<li>View as:</li>
			                    	<li>
			                        	<a class="grid-view" href="grid-view.html">Grid View</a>
			                        </li>
			                		<li>
			                        	<a class="list-view" href="list-view.html">List View</a>
			                        </li>
			                	</ul>
			                </div>
			            </div>
			            <section class="grid-holder features-books">
			            	<figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image25.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image38.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image39.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image40.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                
			                <hr/>
			                <figure class="span3 slide first">
			                	<a href="book-detail.html"><img src="images/image41.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image25.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="#">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image39.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image42.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <hr/>
			                <figure class="span3 slide first">
			                	<a href="book-detail.html"><img src="images/image38.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image25.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image40.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			                <figure class="span3 slide">
			                	<a href="book-detail.html"><img src="images/image41.jpg" alt="" class="pro-img"/></a>
			                    <span class="title"><a href="book-detail.html">A Walk Across The Sun</a></span>
			                    <span class="rating-bar"><img src="images/rating-star.png" alt="Rating Star"/></span>
			                    <div class="cart-price">
			                        <a class="cart-btn2" href="cart.html">Add to Cart</a>
			                        <span class="price">$129.90</span>
			              		</div>
			                </figure>
			            </section>
			            <div class="blog-footer">
			            	<div class="pagination">  
			                  <ul>  
			                    <li><a href="#">Prev</a></li>  
			                    <li class="active">  
			                      <a href="#">1</a>  
			                    </li>  
			                    <li><a href="#">2</a></li>  
			                    <li><a href="#">3</a></li>  
			                    <li><a href="#">4</a></li>  
			                    <li><a href="#">Next</a></li>  
			                  </ul>  
			                </div>
			                
			            	<ul class="product_view">
			               		<li>View as:</li>
			                    <li><a class="grid-view" href="grid-view.html">Grid View</a></li>
			                	<li><a class="list-view" href="list-view.html">List View</a></li>
			               </ul>
			            </div>
			            <!-- End Grid View Section -->
			            
			        </section>
			        <!-- End Main Content -->
			      
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