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

					<h3>Author</h3>
					<a href="new.jsp" class="button"
						style="margin-left: 70%; margin-top: 5px">New author</a>
					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1">
						<!-- This is the target div. id must match the href of this div's tab -->
						<form name="form1">
							<table>

								<thead>
									<tr>
										<th><input class="check-all" type="checkbox" /></th>
										<th>Id</th>
										<th>Name</th>
										<th>DateOfBirth</th>
										<th>Avatar</th>
									</tr>

								</thead>

								<tfoot>
									<tr>
										<td colspan="6"><%@page import="DAO.AuthorDAO"%>
											<%@page import="model.Author"%> <%@page
												import="java.util.*"%><%@page
												import="java.sql.Date"%> <%
 	final int NUMBER_OF_ITEM_PER_PAGE = 10;
 	AuthorDAO ad = new AuthorDAO();
 	ArrayList list = new ArrayList();
 	list = ad.returnNumberOfResult();
 	System.out.println(list.size());
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
										ArrayList selectedItem = new ArrayList();
										try {

											int n = Integer.parseInt(c);
											//	System.out.println(n);

											int count = (n - 1) * NUMBER_OF_ITEM_PER_PAGE;

											while (count < list.size()
													&& count < (n - 1) * NUMBER_OF_ITEM_PER_PAGE
															+ NUMBER_OF_ITEM_PER_PAGE) {
												Author a = (Author) list.get(count);
												System.out.println(count);
												out.println("<tr>");
												out.println("<td><input type='checkbox' name='select' value ='"
														+ count + "'/></td>");
												out.println("<td>" + a.getId() + "</td>");
												out.println("<td><a href='#' title='title'>" + a.getName()
														+ "</a></td>");
												out.println("<td>" + a.getDateOfBirth().getYear() + "-"
														+ a.getDateOfBirth().getMonth() + "-"
														+ a.getDateOfBirth().getDate() + "</td>");
												out.println("<td>");
												out.println("<img style='width: 50px; height: 50px;' src='"+request.getContextPath()+"/images/authors/"+a.getImageLink()+"'/>");
												out.println("</td>");
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
							<input type="submit" class="button" value=" Delete multi author" />
						</form>
					</div>
					<!-- End #tab1 -->

				</div>
				<!-- End .content-box-content -->

			</div>

			<%
				String idRequest = request.getParameter("obj");
				Author au = new Author();
				try {

					int m = Integer.parseInt(idRequest);
					au = (Author) list.get(m);
					ad.deleteAuthor(au.getId());
					response.sendRedirect("index.jsp?page=" + c);
				} catch (Exception ex) {

				}
				// delete multi items
				try {
					String items[] = request.getParameterValues("select");
					System.out.println("NUM OF ITEMS: "+items.length);
					if (items != null) {
						for (String s : items) {
							System.out.println("select: " + s);
							int m = Integer.parseInt(s);
							au = (Author) list.get(m);
							ad.deleteAuthor(au.getId());
						}
						response.sendRedirect("index.jsp?page=1");
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