package model;

import java.io.Serializable;
import java.sql.Date;

public class Reservation implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5198710930948920698L;
	private int id,userID,bookID;
	private Date initDate;
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
	public Date getInitDate() {
		return initDate;
	}
	public void setInitDate(Date initDate) {
		this.initDate = initDate;
	}
	
}
