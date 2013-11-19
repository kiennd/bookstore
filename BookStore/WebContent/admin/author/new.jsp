<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<s:include value="../head.jsp"></s:include>
</head>

<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<s:include value="../sideBar.jsp"></s:include>

		<div id="main-content">
			<!-- Main Content Section with everything -->
			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>New Author</h3>

				</div>
				<s:if test="hasActionErrors()">
					<div class="notification information png_bg">
						<div>
							<s:actionerror />
						</div>
					</div>
				</s:if>

				<s:actionerror />

				<form action="addAuthor" method="post" enctype="multipart/form-data">
					<fieldset>
						<input type="hidden" name="authorBean.id" value="0"> <label>Name:</label>
						<input type="text" name="authorBean.name" size="20"><br><br>
						<label>Birthday</label> <label>Day:</label><input type="text"
							name="day" size="20"> <label>Month:</label><input
							type="text" name="month" size="20"> <label>Year:</label><input
							type="text" name="year" size="20"><br><br>
							 <label>Description:</label><textarea rows="10" cols="40" name="authorBean.description"></textarea><br><br>
						<label>Update author image: </label><input type="file" name="fileUpload" />
						<br><br> 
						<input type="submit" class="button" value="Add author">
					</fieldset>
				</form>

				<!-- End .shortcut-buttons-set -->

				<div class="clear"></div>
				<!-- End .clear -->
			</div>
			<!-- End .content-box-content -->
			<s:include value="../footer.jsp"></s:include>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>