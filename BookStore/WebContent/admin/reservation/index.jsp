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
		<%@include file="../sideBar.jsp"%>

		<!-- End #sidebar -->

		<div id="main-content">
			<%@include file = "../searchForm.jsp" %>

			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">
					<h3>Reservation</h3>
				</div>

				<div class="tab-content " id="tab1">
					<!-- This is the target div. id must match the href of this div's tab -->
					<table>

						<thead>
							<tr>
								<th><input class="check-all" type="checkbox" /></th>
								<th>#</th>
								<th>UserID</th>
								<th>BookID</th>
								<th>InitDate</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="reservationlist" begin="%{startIndex}"
								end="%{endIndex}">
								<tr>
									<td><input type="checkbox" /></td>
									<td align="center"><s:property value="id" /></td>
									<td align="center"><s:property value="userID" /></td>
									<td align="center"><s:property value="bookID" /></td>
									<td align="center"><s:property value="initDate" /></td>
									<td align="center">
										<!-- Icons --> <a
										href="<%=request.getContextPath()%>/admin/reservation/editReservation?id=<s:property value="id" />"
										title="Edit"><img
											src="../resources/images/icons/pencil.png" alt="Edit" /></a> <!-- <a
											href="<%=request.getContextPath()%>/admin/deleteUser?id=<s:property value="id" />" title="Delete"><img
												src="../resources/images/icons/cross.png" alt="Delete" /></a>-->
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

			<s:include value="../footer.jsp"></s:include>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>