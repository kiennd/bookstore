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

			<%@page import="DAO.PublisherDAO"%>
			<%@page import="model.Publisher"%>
			<%
				String id = request.getParameter("publisherId");
				String pname = request.getParameter("publisherName");
				String address = request.getParameter("publisherAddress");
				String description = request.getParameter("publisherDescription");
				Publisher pu = new Publisher(Integer.parseInt(id), pname, address, description);
				PublisherDAO pd = new PublisherDAO();
				boolean b = pd.updatePublisher(pu.getId(), pu);
				if(b){
					out.println("<h2><font color='blue'>Edit successfully</font></h2>");
					response.sendRedirect("index.jsp?page=1");
				}else{
					out.println("<h2><font color='red'>Edit error</font></h2>");
					out.println("<a href='edit.jsp'>Back</a>");
				}
			%>




			<!-- End .shortcut-buttons-set -->

			<div class="clear"></div>
			<!-- End .clear -->

			<s:include value="../footer.jsp"></s:include>
			<!-- End #footer -->

		</div>
		<!-- End #main-content -->

	</div>
</body>

</html>