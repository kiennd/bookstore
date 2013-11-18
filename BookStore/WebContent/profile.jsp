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

		<%
			if (user == null) {
				String redirectURL = request.getContextPath()
						+ "/login.jsp";
				response.sendRedirect(redirectURL);
			}
			int id=0;
			String username=null;
			String fullname=null;
			String telephonenumber=null;
			String password = null;
			if(user!=null){
				id = user.getId();
				username=user.getUsername();
				fullname=user.getFullname();
				telephonenumber = user.getPhonenumber();
				password = user.getPassword();
			}
		%>
		<div id="register-form">
			<h1>
				<strong class="green-t">Profile</strong>
			</h1>

			<form class="form-horizontal" action="editUser" method="post">
				<s:if test="hasActionErrors()">
					<div class="notification information png_bg">
						<div>
							<s:actionerror />
						</div>
					</div>
				</s:if>
				<s:actionerror />
				<input type="hidden" name="userBean.id" value=<%=id%>>
				<ul class="billing-form">
					<li>
						<div class="control-group">
							<label class="control-label" for="inputFirstname">
								Username <sup>*</sup>
							</label>
							<div class="controls">
								<input type="text" name="userBean.username" id="inputFirstname"
									placeholder="enter username here" value=<%=username %>>
							</div>
						</div>

					</li>
					<li>
						<div class="control-group">
							<label class="control-label" for="inputTelephone">Telephone
								<sup>*</sup>
							</label>
							<div class="controls">
								<input type="text" id="inputTelephone" name="userBean.phonenumber"
									placeholder="enter telephone number here" value=<%=telephonenumber %>>
							</div>

						</div>

					</li>
					<div class="control-group">
						<label class="control-label" for="inputFirstname">
							Fullname <sup>*</sup>
						</label>
						<div class="controls">
							<input type="text" name="userBean.fullname" id="inputFirstname"
								placeholder="enter fullname here" value=<%=fullname %>>
						</div>
					</div>
					<li>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="more-btn">Confirm change</button>
							</div>
						</div>
					</li>
				</ul>
			</form>

		</div>




		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file="footerjs.jsp"%>
	<!-- End Main Wrapper -->

</body>
</html>