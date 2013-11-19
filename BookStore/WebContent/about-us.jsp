<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
<style>
#register-form {
	padding-left: 100px;
	margin-left: auto;
	margin-right: auto;
	width: 60%;
	background-color: #d3ffce;
	border: 2px;
	border-radius: 10px;
}
</style>
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

		<!-- End Main Header -->
		<!-- Start Main Content Holder -->
		<section id="content-holder" class="container-fluid container">
		<section class="row-fluid">
		<div class="heading-bar">
			<h2>About Us</h2>
			<span class="h-line"></span>
		</div>
		<!-- Start Main Content --> <section class="span9 first"> <!-- Start Ad Slider Section -->
		
		<!-- End Ad Slider Section --> <!-- Start Simple Contant Holder Section -->
		<section class="content-holder">
		<h2>Hackintosh BookStore</h2>
		<p>
			<img src="images/about-1.jpg" align="left" class="content-img" style=""/>
			<font size="4">Cửa hàng sách điện tử, nơi bạn có thể tìm thấy hàng nghìn đầu sách phù hợp với mọi lứa tuổi.
			Sách của chúng tôi đa dạng về chủng loại, nội dung chắc chắn sẽ làm thỏa mãn bất cứ nhu cầu nào
			về tri thức cũng như giải trí của bạn.
			Cửa hàng sách điện tử của chúng tôi được khai trương vào ngày 8/11/2013 với hơn 1000 đầu sách, và con
			số đó hiện nay là 10000. </br></br>
			Những người tham gia quản lí: <h3>Đỗ Đức Trung, Nguyễn Đức Kiên, Nguyễn Thị Hạnh, Nguyễn thị Hậu, Phan Thanh Tùng
			, Nguyễn Đức Hà</h3>
			</font>
		</p>
		
		</section> <!-- End Simple Contant Holder Section --> </section> <!-- End Main Content -->

		
		<!-- End Main Footer -->
	</div>
	<!-- End Main Wrapper -->





	<!-- Start Footer Top 1 -->
	<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>