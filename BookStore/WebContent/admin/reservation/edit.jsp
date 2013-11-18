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
		<%@include file="../sideBar.jsp"%>
		<!-- End #sidebar -->
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
					<form action="saveReservation" method="post">
						<table>
						<tr>
							<s:hidden name="reservation.id"></s:hidden>
							<s:hidden name="userid"></s:hidden>
							<s:hidden name="bookid"></s:hidden>
						</tr>
						<tr>
							<td>
							<s:textfield name="reservation.initDate" key="Init Date"
								cssClass="text-input medium-input"></s:textfield>
							</td>
						</tr>
						<tr>
							<td>
							<input class="button" type="submit" value="Save"></input>
							</td>
						</tr>
						</table>
					</form>

				</div>



			</div>

			<div class="clear"></div>


			<s:include value="../footer.jsp"></s:include>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>