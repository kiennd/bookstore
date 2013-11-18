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
		        
		        <!-- Start Map Section -->
		        <section class="map-holder">
		        	<iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.mu/?ie=UTF8&amp;ll=-20.234496,57.603722&amp;spn=0.093419,0.169086&amp;t=m&amp;z=13&amp;output=embed"></iframe>
		        </section>
		        <!-- Start Map Section -->
		        
		        <div class="span6 c-form-holder first">
		        	<!-- Start Contact form Section -->
		        <form class="form-horizontal" action="newFeedback" method="post">
		        <s:actionerror />
		        <input type="hidden"  name="feedBean.id" value="0">
		          <div class="control-group">
		            <label class="control-label" for="inputEmail">Name <sup>*</sup></label>
		            <div class="controls">
		              <input type="text" id="inputEmail" placeholder="" name="feedBean.name">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Email <sup>*</sup></label>
		            <div class="controls">
		              <input type="text" id="inputEmail" placeholder="" name="feedBean.email">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Subject <sup>*</sup></label>
		            <div class="controls">
		              <input type="text" id="inputEmail" placeholder="" name="feedBean.subject">
		            </div>
		          </div>
		          <div class="control-group">
		            <label class="control-label" for="inputPassword">Message <sup>*</sup></label>
		            <div class="controls">
		              <textarea cols="2" rows="20" name="feedBean.message"></textarea>
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
		        	<p>Office No. 23, 1st Floor,<br /> Nguyen Trai, Ha Noi <br />Viet Nam</p>
		            <p>Phone: (123) 456-7890 <br />Fax: +08 (123) 456-7890 <br />Email: <a href="#">contact@hackintoshstore.com</a> <br />Web: <a href="#">companyname.com</a></p>
		            
		        </div>
		        
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