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
		<s:include value="../sideBar.jsp"></s:include>
		<div id="main-content">
			<!-- Main Content Section with everything -->

			<div class="clear"></div>

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>New Publisher</h3>

				</div>
				<s:if test="hasActionErrors()">
					<div class="notification information png_bg">
						<div>
							<s:actionerror />
						</div>
					</div>
				</s:if>

				<s:actionerror />

				<form action="addPublisher" method="post">
					<fieldset>
						<input type="hidden" name="publisherBean.id" value="0"> <label>Name:</label>
						<input type="text" name="publisherBean.name" size="20"><br>
						<label>Address: </label><input type="text"
							name="publisherBean.address" size="20"> <br> <label>Description:</label>
						<textarea rows="10" cols="40" name="publisherBean.description"></textarea>
						<br> <input type="submit" class="button"
							value="Add publisher">
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