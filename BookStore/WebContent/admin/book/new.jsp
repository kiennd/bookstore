<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<s:include value="../head.jsp"></s:include>
<%
	if (request.getAttribute("categories") == null) {
		String redirectURL = "newShow";
		response.sendRedirect(redirectURL);
	}
%>
<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<%@include file="../sideBar.jsp"%>

		<div id="main-content">
			<!-- Main Content Section with everything -->

			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">
					<h3>New book</h3>
					<ul class="content-box-tabs">
					</ul>
					<div class="clear"></div>
				</div>
				<div
					style="padding-left: 40px; padding-top: 20px; padding-bottom: 20px;">

					<s:if test="hasActionErrors()">
						<div class="notification information png_bg">
							<div>
								<s:actionerror />
							</div>
						</div>
					</s:if>

					<form action="newSave" method="post" enctype="multipart/form-data">
						<p>
							<s:textfield name="bookBean.id" key="BookID"
								cssClass="text-input medium-input"></s:textfield>
						</p>

						<p>
							<label>Publisher:</label> <select name="bookBean.publisher.id">
								<s:iterator value="publishers">
									<option value="${id}">${name}</option>
								</s:iterator>
							</select>
						</p>

						<p>
							<label>Author</label> <select name="bookBean.author.id">
								<s:iterator value="authors">
									<option value="${id}">${name}</option>
								</s:iterator>
							</select>
						</p>

						<p>
							<label>Category</label> <select name="bookBean.category.id">
								<s:iterator value="categories">
									<option value="${id}">${name}</option>
								</s:iterator>
							</select>
						</p>
						<p>
							<s:textfield name="bookBean.title" key="title"
								cssClass="text-input medium-input"></s:textfield>
						</p>

						<p>
							<label>Description:</label>
							<ckeditor:editor editor="bookBean.description" basePath="../../ckeditor/" value=""></ckeditor:editor>
						</p>

						<p>
							<s:textfield name="bookBean.price" key="Price"
								cssClass="text-input medium-input"></s:textfield>
						</p>

						<p>
							<s:textfield name="store.quantity" key="Price"
								cssClass="text-input medium-input"></s:textfield>
						</p>

						<p>
							<s:file name="fileUpload" label="Select a File to upload"
								size="40" />
						</p>
						
						
						
						<p>
							<input class="button" type="submit" value="Submit"></input>
						</p>
					</form>
				</div>
			</div>

			<div class="clear"></div>

			<%@include file="../footer.jsp"%>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>