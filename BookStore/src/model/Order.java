package model;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -8498816808466061476L;
	private int id,quantity;
	private int price;
	private User user;
	private Book book;
	private PaymentMethod paymentMethod;
	private float discount;
	private Date orderDate;
	private long cardnumber, cardverificationnumber;
	private String nameoncard;
	private Date expirationdate;
	
	public int getId() {
		return id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public PaymentMethod getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(PaymentMethod paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public void setId(int id) {
		this.id = id;
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
	
	
	public long getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(long cardnumber) {
		this.cardnumber = cardnumber;
	}
	public long getCardverificationnumber() {
		return cardverificationnumber;
	}
	public void setCardverificationnumber(long cardverificationnumber) {
		this.cardverificationnumber = cardverificationnumber;
	}
	public void setCardverificationnumber(int cardverificationnumber) {
		this.cardverificationnumber = cardverificationnumber;
	}
	public String getNameoncard() {
		return nameoncard;
	}
	public void setNameoncard(String nameoncard) {
		this.nameoncard = nameoncard;
	}
	public Date getExpirationdate() {
		return expirationdate;
	}
	public void setExpirationdate(Date expirationdate) {
		this.expirationdate = expirationdate;
	}
	public Order() {
		// TODO Auto-generated constructor stub
	}
	
	
}
