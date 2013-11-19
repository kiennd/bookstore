<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Vector"%>
<%@page import="model.User"%>
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


			<div class="clear"></div>
			<!-- End .clear -->

			<div class="content-box">
				<!-- Start Content Box -->

				<div class="content-box-header">

					<h3>Author</h3>
					<div class="clear"></div>

				</div>
				<!-- End .content-box-header -->

				<div class="content-box-content">

					<div class="tab-content default-tab" id="tab1">
						<!-- This is the target div. id must match the href of this div's tab -->

						<%@page import="DAO.AuthorDAO"%>
						<%@page import="model.Author"%>
						<%@page import="java.util.*"%>
						<%@page import="java.sql.Date"%>

						<%
							AuthorDAO ad = new AuthorDAO();
							ArrayList list = new ArrayList();
							list = ad.returnNumberOfResult();
							String idRequest = request.getParameter("obj");
							Author au = new Author();
							try {

								int m = Integer.parseInt(idRequest);
								au = (Author) list.get(m);
								out.println("<h2>" + "Edit author <font color='green'>"
										+ au.getName() + "</font></h2>");
							} catch (Exception ex) {

							}
							int i = 0;
							int d = 0, m = 0, y = 0;
							if (au.getDateOfBirth() != null) {
								Date date = au.getDateOfBirth();
								d = date.getDate();
								m = date.getMonth();
								y = date.getYear();
							}
						%>

						<s:if test="hasActionErrors()">
							<div class="notification information png_bg">
								<div>
									<s:actionerror />
								</div>
							</div>
						</s:if>

						<s:actionerror />

						<form action="editAuthor" method="post"
							enctype="multipart/form-data">
							<fieldset>
								<input type="hidden" name="authorBean.id"
									value="<%=au.getId()%>"> <label>Name:</label> <input
									type="text" name="authorBean.name" size="20"
									value="<%=au.getName()%>"><br>
								<br> <label>Birthday</label> <label>Day:</label><input
									type="text" name="day" size="20" value="<%=d%>"> <label>Month:</label><input
									type="text" name="month" size="20" value="<%=m%>"> <label>Year:</label><input
									type="text" name="year" size="20" value="<%=y%>"><br>
								<br> <label>Description:</label>
								<textarea rows="10" cols="40" name="authorBean.description"><%=au.getDescription()%></textarea>
								<br>
								<br>
								<label>Update author image: </label><input type="file"
									name="fileUpload" /> <br>
								<br> <input type="submit" class="button" value="Add author">
							</fieldset>
						</form>


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