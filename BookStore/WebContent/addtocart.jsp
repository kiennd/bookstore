<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="model.Book"%>
<%@page import="java.util.Vector"%>
<%@page import="DAO.BookDAO"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int bookid = Integer.parseInt(request.getParameter("id"));
	out.print(bookid);
	Vector<Cart> cartlist = new Vector();
	if (session.getAttribute("cartlist") != null) {
		cartlist = (Vector<Cart>) session.getAttribute("cartlist");
	}

	Cart cart = new Cart();
	for (Cart c : cartlist) {
		if (c.getBook().getId() == bookid) {
			c.setQuantity(c.getQuantity() + 1);
			cart = c;
			break;
		}
	}
	if (cart.getBook()==null) {
		BookDAO bookDao = new BookDAO();
		cart.setBook(bookDao.getBookbyId(bookid));
		cart.setQuantity(1);
		cartlist.addElement(cart);
	}
	
	session.setAttribute("cartlist", cartlist);
	response.sendRedirect("cart.jsp");
%>
