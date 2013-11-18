<%@page import="DAO.PaymentMethodDAO"%>
<%@page import="model.PaymentMethod"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<%
		
	%>
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
		        <h2>Checkout</h2>
		        <span class="h-line"></span> </div>
		      <!-- Start Main Content -->
		      <section class="checkout-holder">
		        <section class="span9 first">
		          <!-- Start Accordian Section -->
		          <div class="accordion" id="accordion2">
		          	
		            <div class="accordion-group">
		            	<s:if test="user==null">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"> Login</a></div>
		              <div id="collapseOne" class="accordion-body collapse in">
		                  <div class="span5 check-method-right">
		                    <a href="login.jsp"><button>Login</button></a>
		                  </div>
		                </div>
		              </div>
		              </s:if>
		              <s:else>
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"> User</a></div>
					  	<div id="collapseOne" class="accordion-body collapse in">
		                  <div class="span5 check-method-right">
		                    Welcome <s:property value="user.fullname"/>
		                  </div>
		                </div>
		                </s:else>	
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFifth"> Payment Information </a> </div>
		              <div id="collapseFifth" class="accordion-body collapse">
		                <div class="accordion-inner">
		                	<form class="form-horizontal" action="savecheckout">
		                        <ul class="billing-form">
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCardname">Name on Card<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="cardname" placeholder=""/>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCardtype">Credit Card Type <sup>*</sup></label>
		                                <div class="controls">
		                                	<s:select list="pmlist" listKey="id" listValue="methodDescription"></s:select>
		                                </div>
		                              </div>
		                            </li>                            
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCreditcardnum">Credit Card Number  <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="creditcardnum" placeholder=""/>
		                                </div>
		                              </div>
		                              
		                            </li>
		                        	<li>
		                            	<div class="control-group">
		                                <div class="controls">
		                                  <button type="submit" class="more-btn">Continue</button>
		                                </div>
		                              </div>
		                            </li>
		                        </ul>
		                    </form>
		                </div>
		              </div>
		            </div>
		            
		          </div>
		          <!-- End Accordian Section -->
		        </section>
		        <section class="span3 first">
		          <div class="side-holder">
		            <div class="r-title-bar"> <strong><a href="#">Write Your Own Review</a></strong> </div>
		            <ul class="review-list">
		              <li><a href="#">Billing Information</a></li>
		              <li><a href="#">Shipping Information</a></li>
		              <li><a href="#">Shipping Method</a></li>
		              <li><a href="#">Payment Method </a></li>
		              <li><a href="#">Order Review</a></li>
		            </ul>
		          </div>
		        </section>
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