package control.backend;

import java.util.Vector;

import model.Book;
import model.Order;
import model.PaymentMethod;
import model.User;
import DAO.BookDAO;
import DAO.OrderDAO;
import DAO.PaymentMethodDAO;
import DAO.UserDAO;

import com.opensymphony.xwork2.ActionSupport;


public class OrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 8064257333333547348L;
	
	private Order order;
	private int bookid;
	private int userid;
	private int pmid;
	
	private int id;
	private Vector<Order> orderlist;
	private Vector<PaymentMethod> paymentlist;
	private String name = "";
	private int page, totalPage, startIndex, endIndex;
	private static final int ITEM_PER_PAGE = 20;
	
	
	
	public Order getOrder() {
		return order;
	}


	public void setOrder(Order order) {
		this.order = order;
	}

	public int getPmid() {
		return pmid;
	}


	public void setPmid(int pmid) {
		this.pmid = pmid;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public int getBookid() {
		return bookid;
	}


	public void setBookid(int bookid) {
		this.bookid = bookid;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Vector<Order> getOrderlist() {
		return orderlist;
	}


	public void setOrderlist(Vector<Order> orderlist) {
		this.orderlist = orderlist;
	}


	public Vector<PaymentMethod> getPaymentlist() {
		return paymentlist;
	}


	public void setPaymentlist(Vector<PaymentMethod> paymentlist) {
		this.paymentlist = paymentlist;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPage() {
		return page;
	}


	public void setPage(int page) {
		this.page = page;
	}


	public int getTotalPage() {
		return totalPage;
	}


	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}


	public int getStartIndex() {
		return startIndex;
	}


	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}


	public int getEndIndex() {
		return endIndex;
	}


	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}


	public String listOrder() {
		OrderDAO orderDao = new OrderDAO();
		this.orderlist = orderDao.searchOrder(name);
		
		if(this.orderlist.size()==0){
			endIndex = -1;
			return SUCCESS;
		}
		
		totalPage = orderlist.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < orderlist.size()) {
			totalPage++;
		}
		System.out.println("totalPage:" + totalPage);
		if (page <= 0) {
			page = 1;
		}
		startIndex = (page - 1) * ITEM_PER_PAGE;
		if (page != totalPage) {
			endIndex = page * ITEM_PER_PAGE - 1;
		} else {
			endIndex = orderlist.size() - 1;
		}

		
		return SUCCESS;
	}
	
	
	public String editOrder() {
		OrderDAO orderDao = new OrderDAO();
		this.order = orderDao.getOrder(id);
		this.userid = this.order.getUser().getId();
		this.bookid = this.order.getBook().getId();
		PaymentMethodDAO paymentMethodDao = new PaymentMethodDAO();
		this.paymentlist = paymentMethodDao.find("");
		if (this.order!=null) {
			return SUCCESS;
		}
		return ERROR;
	}
	
	

	public String saveOrder() {
		OrderDAO orderDao = new OrderDAO();
		BookDAO bookDao = new BookDAO();
		UserDAO userDao = new UserDAO();
		PaymentMethodDAO pmDao = new PaymentMethodDAO();
		this.order.setBook(bookDao.getBookbyId(this.bookid));
		this.order.setUser(userDao.getUser(userid));
		this.order.setPaymentMethod(pmDao.getPaymentMethod(pmid));
		if (orderDao.editOrder(this.order)) {
			return SUCCESS;
		}
		return ERROR;
	}
}
