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
		        <!-- Start Main Content -->
		        <section class="span12">
		            <!-- Strat Book Detail Section -->
		            <section class="b-detail-holder">
		            	<article class="title-holder">
		                   <h4><i class="icon-ok"></i> Your order has been recieved</h4>
		                </article>
		                
		            <!-- Stsrt order recieved Section -->
		            	<section class="reviews-section">
		                	<figure class="right-sec r-border">
		                     <span class="green-t">Thank for your purchase!</span>
		                    	<p>Your order # is: 100000261.<br />
		You will receive an order confirmation email with details of your order and link to track it’s progress.<br />
		Click here to print a copy of your order confirmation.</p>
		                        <a href="grid-view.html" class="more-btn ">Continue Shopping</a>
		                    </figure>
		                	<figure class="left-sec">
		                    	<div class="r-title-bar">
		                        	<strong class="green-t">My Orders</strong>
		                        </div>
		                        <ul class="order-list">
		                        	<li>
		                            	 <label class="checkbox">
		                                <input type="checkbox"> <span>The Kite Runner</span><br /> by Khalid Hosseini
		                                </label>
		                            </li>
		                            <li>
		                            	 <label class="checkbox">
		                                <input type="checkbox"> <span>The Kite Runner</span><br /> by Khalid Hosseini
		                                </label>
		                            </li>
		                            <li>
		                            	 <label class="checkbox">
		                                <input type="checkbox"> <span>The Kite Runner</span><br /> by Khalid Hosseini
		                                </label>
		                            </li>
		                            <li>
		                            	 <label class="checkbox">
		                                <input type="checkbox"> <span>The Kite Runner</span><br /> by Khalid Hosseini
		                                </label>
		                            </li>                        
		                        	<li>
			                            <a href="#">View All</a>
		                            </li>
		                        </ul>
		                        
		                        <a href="cart.html" class="grey-btn">+ Add to Cart</a>
		                    </figure>
		                </section>
		            <!-- End order recieved Section -->
		            </section>
		            <!-- Strat Book Detail Section -->
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