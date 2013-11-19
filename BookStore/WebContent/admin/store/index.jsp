<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<s:include value="../head.jsp"></s:include>

<%
	if (request.getAttribute("stores") == null) {
		String redirectURL = "index";
		response.sendRedirect(redirectURL);
	}
%>
</head>


<body>
	<div id="body-wrapper">
		<!-- Wrapper for the radial gradient background -->
		<%@include file="../sideBar.jsp"%>
		<div id="main-content">
			<!-- Main Content Section with everything -->
			<%@include file = "../searchForm.jsp" %>
			<div class="clear"></div>
			<!-- End .clear -->
			<div class="content-box">
				<!-- Start Content Box -->
				<div class="content-box-header">
					<h3>Store</h3>
					<a href="<%=request.getContextPath()%>/admin/store/new" class="button"
						style="margin-left: 70%; margin-top: 5px">New Store</a>
				</div>
				<div class="tab-content">
					<!-- This is the target div. id must match the href of this div's tab -->
					<s:if test="hasActionMessages()">
						<div class="notification information png_bg">
							<a href="#" class="close"><img
								src="../resources/images/icons/cross_grey_small.png"
								title="Close this notification" alt="close" /></a>
							<div>
								<s:actionmessage />
							</div>
						</div>
					</s:if>
					<s:form action="delete" id="form1">
						<table>
							<thead>
								<tr>
									<th><input class="check-all" type="checkbox" /></th>
									<th>BookID</th>
									<th>Quantity</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="stores" begin="%{startIndex}"
									end="%{endIndex}" status="stat">
									<tr>
										<td><input type="checkbox" name="slelect"
											value=<s:property value = "bookID"/>></td>
										<td><s:property value="bookID" /></td>
										<td><s:property value="quantity" /></td>
										<td>
											<!-- Icons --> <a
											href="<%=request.getContextPath()%>/admin/store/edit?id=<s:property value="bookID" />"
											title="Edit"><img
												src="../resources/images/icons/pencil.png" alt="Edit" /></a> <a
											href="<%=request.getContextPath()%>/admin/store/delete?id=<s:property value="bookID" />"
											title="Delete"><img
												src="../resources/images/icons/cross.png" alt="Delete" /></a>
										</td>
									</tr>
								</s:iterator>
							</tbody>
							<tfoot>
								<%@include file = "../tableFooter.jsp" %>
							</tfoot>
						</table>
					</s:form>
				</div>
				<!-- End .content-box-content -->
			</div>
			<!-- End .content-box -->
			<s:include value="../footer.jsp"></s:include>
		</div>
		<!-- End #main-content -->
	</div>
</body>

</html>