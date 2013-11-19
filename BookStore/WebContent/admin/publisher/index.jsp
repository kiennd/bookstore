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

			<div class="clear"></div>
			<!-- End .shortcut-buttons-set -->

			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->
				<div class="content-box-header">

					<h3>Publisher</h3>
					<a href="new.jsp" class="button"
						style="margin-left: 70%; margin-top: 5px">New publisher</a>
					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1">
						<form name="form1">
							<table>
								<thead>
									<tr>
										<th><input class="check-all" type="checkbox" /></th>
										<th>Id</th>
										<th>Name</th>
										<th>Address</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<td colspan="6"><%@page import="DAO.PublisherDAO"%>
											<%@page import="model.Publisher"%> <%@page
												import="java.util.ArrayList"%> <%
 	final int NUMBER_OF_ITEM_PER_PAGE = 10;
 	PublisherDAO pd = new PublisherDAO();
 	ArrayList list = new ArrayList();
 	list = pd.returnNumberOfResult();
 	out.println("<div class=\"pagination\">");
 	out.println("<a href='#' title='First Page'>&laquo; First</a><a href='#'");
 	out.println("title='Previous Page'>&laquo; Previous</a>");
 	int numOfPage = 0;
 	if (list.size() % NUMBER_OF_ITEM_PER_PAGE != 0) {
 		numOfPage = list.size() / NUMBER_OF_ITEM_PER_PAGE + 1;
 	} else {
 		numOfPage = list.size() / NUMBER_OF_ITEM_PER_PAGE;
 	}
 	for (int i = 0; i < numOfPage; i++) {
 		out.println(" <a href='index.jsp?page=" + (i + 1)
 				+ "'class='number' title='" + (i + 1) + "'>" + (i + 1)
 				+ "</a>");
 	}

 	out.println("<a href='#'title='Next Page'>Next &raquo;</a><a href='#'");
 	out.println("'title='Last Page'>Last &raquo</a>");
 	out.println("</div> <!-- End .pagination -->");
 %>
											<div class="clear"></div></td>
									</tr>
								</tfoot>

								<tbody>
									<!-- Display items in page -->
									<%
										String c = request.getParameter("page");

										try {

											int n = Integer.parseInt(c);
											//	System.out.println(n);

											int count = (n - 1) * NUMBER_OF_ITEM_PER_PAGE;

											while (count < list.size()
													&& count < (n - 1) * NUMBER_OF_ITEM_PER_PAGE
															+ NUMBER_OF_ITEM_PER_PAGE) {
												Publisher p = (Publisher) list.get(count);
												System.out.println(count);
												out.println("<tr>");

												out.println("<td><input type='checkbox' name='select' value ='"
														+ count + "'/></td>");

												out.println("<td>" + p.getId() + "</td>");
												out.println("<td><a href='#' title='title'>" + p.getName()
														+ "</a></td>");
												out.println("<td>" + p.getAddress() + "</td>");

												out.println("<td>");
												out.println("<a href='index.jsp?page="
														+ c
														+ "&obj="
														+ count
														+ "' title='Delete'><img src='../resources/images/icons/cross.png' alt='Delete' /></a>");
												out.println("<a href='edit.jsp?page="
														+ c
														+ "&obj="
														+ count
														+ "' title='Edit Meta'><img src='../resources/images/icons/hammer_screwdriver.png' alt='Edit Meta' /></a>");
												out.println("</td>");

												out.println("</tr>");
												count++;
											}

										} catch (Exception ex) {

										}
									%>

								</tbody>

							</table>
							<input type="submit" class="button"
								value=" Delete multi publisher" />
						</form>
					</div>
					<!-- End #tab1 -->

				</div>
				<!-- End .content-box-content -->


			</div>
			<%
				String idRequest = request.getParameter("obj");
				Publisher pu = new Publisher();
				try {

					int m = Integer.parseInt(idRequest);
					pu = (Publisher) list.get(m);
					pd.deletePublisher(pu.getId());
					response.sendRedirect("index.jsp?page=" + c);
				} catch (Exception ex) {

				}
				// delete multi items
				try {
					String items[] = request.getParameterValues("select");
					if (items != null) {
						for (String s : items) {
							System.out.println("select: " + s);
							int m = Integer.parseInt(s);
							pu = (Publisher) list.get(m);
							pd.deletePublisher(pu.getId());
							response.sendRedirect("index.jsp?page=1");
						}
					}
				} catch (Exception ex) {

				}
			%>



			<s:include value="../footer.jsp"></s:include>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>