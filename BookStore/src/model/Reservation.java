package model;

import java.io.Serializable;
import java.sql.Date;

public class Reservation implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5198710930948920698L;
	private int id;
	private User user;
	private Book book;
	private Date initDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Date getInitDate() {
		return initDate;
	}
	public void setInitDate(Date initDate) {
		this.initDate = initDate;
	}
	
}
