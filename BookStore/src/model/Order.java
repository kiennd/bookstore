package model;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8498816808466061476L;
	private int id,userID,bookID,paymentMethodID,price,quantity;
	private float discount;
	private Date orderDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	public int getPaymentMethodID() {
		return paymentMethodID;
	}
	public void setPaymentMethodID(int paymentMethodID) {
		this.paymentMethodID = paymentMethodID;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Order(int id, int userID, int bookID, int paymentMethodID,
			int price, int quantity, float discount, Date orderDate) {
		super();
		this.id = id;
		this.userID = userID;
		this.bookID = bookID;
		this.paymentMethodID = paymentMethodID;
		this.price = price;
		this.quantity = quantity;
		this.discount = discount;
		this.orderDate = orderDate;
	}
	
	public Order() {
		// TODO Auto-generated constructor stub
	}
	
	
}
