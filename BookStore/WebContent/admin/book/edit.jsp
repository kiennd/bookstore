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
</head>

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

					<h3>Content box</h3>
					<ul class="content-box-tabs">
					</ul>
					<div class="clear"></div>
				</div>

				<div
					style="padding-left: 40px; padding-top: 20px; padding-bottom: 20px;">
					<form action="save" method="post">
						<s:hidden name="bookBean.id"></s:hidden>
						<p>
							<label>Publisher:</label> <select name="bookBean.publisher.id">
								<s:iterator value="publishers">
									<s:if test="%{id == bookBean.publisher.id}">
										<option selected="selected" value="${bookBean.publisher.id}"><s:property
												value="bookBean.publisher.name" /></option>
									</s:if>
									<s:else>
										<option value="${id}"><s:property value="name" /></option>
									</s:else>
								</s:iterator>
							</select>
						</p>

						<p>
							<label>Author</label> <select name="bookBean.author.id">
								<s:iterator value="authors">
									<s:if test="%{id == bookBean.author.id}">
										<option selected="selected" value="${bookBean.author.id}"><s:property
												value="bookBean.author.name" /></option>
									</s:if>
									<s:else>
										<option value="${id}"><s:property value="name" /></option>
									</s:else>
								</s:iterator>
							</select>
						</p>


						<p>
							<label>Description:</label>
						
							<ckeditor:editor editor="bookBean.description" basePath="../../ckeditor/" value="${bookBean.description}"></ckeditor:editor>
						</p>
						
						<p>
							<s:textfield name="bookBean.title" key="title"
								cssClass="text-input medium-input"></s:textfield>
						</p>
						<p>
							<select name="bookBean.category.id">
								<s:iterator value="categories">
									<s:if test="%{id == bookBean.category.id}">
										<option selected="selected" value="${bookBean.category.id}"><s:property
												value="bookBean.category.name" /></option>
									</s:if>
									<s:else>
										<option value="${id}"><s:property value="name" /></option>
									</s:else>
								</s:iterator>
							</select>
						</p>
						<p>
							<s:textfield name="bookBean.price" key="Price"
								cssClass="text-input medium-input"></s:textfield>
						</p>


						<s:hidden name="bookBean.imageurl"></s:hidden>
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