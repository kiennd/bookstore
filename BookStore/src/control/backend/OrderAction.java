package control.backend;

import java.util.ArrayList;
import java.util.Vector;

import model.Order;
import DAO.OrderDAO;

import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8064257333333547348L;
	
	private Order order;
	
	private int id;
	private Vector<Order> orderlist;
	private ArrayList<String> paymentlist;
	private String name = "";
	private int page, totalPage, startIndex, endIndex;
	private static final int ITEM_PER_PAGE = 20;
	
	
	public Order getOrder() {
		return order;
	}


	public void setOrder(Order order) {
		this.order = order;
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


	public ArrayList<String> getPaymentlist() {
		return paymentlist;
	}


	public void setPaymentlist(ArrayList<String> paymentlist) {
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
		if (this.order!=null) {
			return SUCCESS;
		}
		return ERROR;
	}
	
	

	public String saveOrder() {
		OrderDAO orderDao = new OrderDAO();
		if (orderDao.editOrder(this.order)) {
			System.out.println(this.order.getId());
			return SUCCESS;
		}
		return ERROR;
	}
}
