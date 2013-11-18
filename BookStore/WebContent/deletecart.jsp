<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="model.Book"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.BookDAO"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	out.print(id);
	Vector<Cart> cartlist = (Vector<Cart>)session.getAttribute("cartlist");
	session.removeAttribute("cartlist");
	for (Cart cart : cartlist) {
		if (cart.getBook().getId() == id) {
			cartlist.remove(cart);
			break;
		}
	}
	session.setAttribute("cartlist", cartlist);
	response.sendRedirect("cart.jsp");
%>	