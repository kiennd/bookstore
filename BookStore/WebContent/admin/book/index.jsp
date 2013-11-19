<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@page import="model.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<s:include value="../head.jsp"></s:include>
<%
	if (request.getAttribute("bookList") == null) {
		String redirectURL = "index";
		response.sendRedirect(redirectURL);
	}
%>
</head>

<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<%@include file="../sideBar.jsp"%>
		<!-- End #sidebar -->
		<div id="main-content">
			<!-- Main Content Section with everything -->
			<%@include file="../searchForm.jsp"%>
			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->
				<div class="content-box-header">
					<h3>Books</h3>
					<a href="<%=request.getContextPath()%>/admin/book/new.jsp"
						class="button" style="margin-left: 70%; margin-top: 5px">New
						Book</a>
				</div>
				<div class="tab-content " >
					<table align = "right">
						<thead>
							<tr>
								<th><input class="check-all" type="checkbox" /></th>
								<th>ID</th>
								<th>Publisher</th>
								<th>Author</th>
								<th>Description</th>
								<th>Title</th>
								<th>Category</th>
								<th>Price</th>
								<th>Imageurl</th>
							</tr>
						</thead>

						<tbody>

							<s:iterator value="bookList" begin="startIndex"
								end="endIndex">
								<tr >
									<td><input type="checkbox" /></td>
									<td>${id}</td>
									<td>${publisher.name}</td>
									<td>${author.name}</td>
									<td>${description}</td>
									<td>${title}</td>
									<td>${category.name}</td>
									<td>${price}</td>
									<td>
									<br>
									<a><img  src="../../images/books/${imageurl}" alt="image"/></a>
									</td>
									<td>
										<!-- Icons --> <a
										href="<%=request.getContextPath()%>/admin/book/edit?id=<s:property value="id" />"
										title="Edit"><img
											src="../resources/images/icons/pencil.png" alt="Edit" /></a> 
											<a
										href="<%=request.getContextPath()%>/admin/book/delete?id=${id}"
										title="Delete"><img
											src="../resources/images/icons/cross.png" alt="Delete" /></a>
									</td>
								</tr>
							</s:iterator>
						</tbody>
						<tfoot>
							<%@include file="../tableFooter.jsp"%>
						</tfoot>
					</table>
				</div>
				<!-- End .content-box-content -->
			</div>
			<!-- End .content-box -->
			<%@include file="../footer.jsp"%>
			<!-- End #footer -->
		</div>
		<!-- End #main-content -->
	</div>
</body>

</html>