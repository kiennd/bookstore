<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="DAO.PublisherDAO"%>
<%@page import="model.Publisher"%>
<%@page import="java.util.ArrayList"%>
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

					<h3>Publisher</h3>
					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1">
						<%
							PublisherDAO pd = new PublisherDAO();
							ArrayList list = new ArrayList();
							list = pd.returnNumberOfResult();
							String c = request.getParameter("page");
							String idRequest = request.getParameter("obj");
							Publisher pu = new Publisher();
							try {

								int m = Integer.parseInt(idRequest);
								pu = (Publisher) list.get(m);
								out.println("<h2>" + "Edit publisher <font color='green'>"
										+ pu.getName() + "</font></h2>");
							} catch (Exception ex) {

							}
							int i = 0;
						%>
						<form action="editPublisherExecute.jsp" method="post">
							<fieldset>
								<input type="hidden" name="publisherId" value="<%=pu.getId()%>">
								<p>
									<label>Name:</label> <input type="text"
										class="edit-publisher-form" name="publisherName" size="20"
										value="<%=pu.getName()%>">
								</p>
								<p>
									<label>Address:</label> <input type="text"
										class="edit-publisher-form" name="publisherAddress" size="20"
										value="<%=pu.getAddress()%>">
								</p>
								<p>
									<label>Description:</label>
									<textarea class="edit-publisher-form"
										name="publisherDescription" rows="4" cols="30"><%=pu.getDescription()%></textarea>
								</p>
								<p>
									<input type="submit" class="button" value="Confirm change">
								</p>
							</fieldset>
							<div class="clear"></div>
							<!-- End .clear -->
						</form>
						<!-- End .shortcut-buttons-set -->
						<div class="clear"></div>
						<!-- End .clear -->
						<s:include value="../footer.jsp"></s:include>
						<!-- End #footer -->
					</div>
					<!-- End #main-content -->

				</div>
			</div>
		</div>
	</div>
</body>

</html>