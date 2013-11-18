<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>
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



		<div id="register-form">
			<h1>
				<strong class="green-t">Login</strong>
			</h1>
			<form action="login" method="post">
				<s:if test="hasActionErrors()">
					<div class="notification information png_bg">
						<div>
							<s:actionerror />
						</div>
					</div>
				</s:if>
				<div class="control-group">
					<label class="control-label" for="inputFirstname"> Username
						<sup>*</sup>
					</label>
					<div class="controls">
						<input type="text" name="userBean.username" id="inputFirstname"
							placeholder="enter username here">
					</div>
				</div>
				<div class="clear"></div>
				<div class="control-group">
					<label class="control-label" for="inputLastname">Password<sup>*</sup>
					</label>
					<div class="controls">
						<input type="password" id="inputLastname" name="userBean.password"
							placeholder="enter password">
					</div>
				</div>
				<div class="clear"></div>
				<p id="remember-password">
					<input type="checkbox" />Remember me
				</p>

				<div class="clear"></div>
				<p>
					<input class="button" type="submit" value="Sign In" />
				</p>

			</form>

		</div>




		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>