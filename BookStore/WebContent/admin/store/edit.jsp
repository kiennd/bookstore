<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<s:include value="../head.jsp"></s:include>

</head>


<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->

<%@include file="../sideBar.jsp" %>

		<div id="main-content">
			<!-- Main Content Section with everything -->



			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>Store box</h3>

					<ul class="content-box-tabs">


					</ul>

					<div class="clear"></div>

				</div>

				<div
					style="padding-left: 40px; padding-top: 20px; padding-bottom: 20px;">
					<form action="save" method="post">
						<p>
							<s:textfield name="storeBean.bookID" key="bookID"
								cssClass="text-input medium-input"></s:textfield>
						</p>
						<p>
							<s:textfield name="storeBean.quantity" key="quantity"
								cssClass="text-input medium-input"></s:textfield>
						</p>
						<p>
							<input class="button" type="submit" value="Submit"></input>
						</p>
					</form>

				</div>
			</div>
			<div class="clear"></div>
			<div id="footer">
				<small> &#169; Copyright 2009 Simpla Admin | Powered by <a
					href="http://themeforest.net/item/simpla-admin-flexible-user-friendly-admin-skin/46073">Simpla
						Admin</a> | <a href="#">Top</a>
				</small>
			</div>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>