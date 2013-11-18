package control.backend;

import java.util.Vector;

import model.Reservation;
import DAO.BookDAO;
import DAO.ReservationDAO;
import DAO.UserDAO;

import com.opensymphony.xwork2.ActionSupport;

public class ReservationAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -6804029173735328331L;

	private Reservation reservation;

	private int id;
	private int userid;
	private int bookid;
	
	private Vector<Reservation> reservationlist;
	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getBookid() {
		return bookid;
	}

	public void setBookid(int bookid) {
		this.bookid = bookid;
	}

	private String name = "";
	private int page, totalPage, startIndex, endIndex;
	private static final int ITEM_PER_PAGE = 20;
	
	
	
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

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Vector<Reservation> getReservationlist() {
		return reservationlist;
	}

	public void setReservationlist(Vector<Reservation> reservationlist) {
		this.reservationlist = reservationlist;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String listReservation() {
		ReservationDAO reservationDao = new ReservationDAO();
		this.reservationlist = reservationDao.searchReservation(name);
		
		if(this.reservationlist.size()==0){
			endIndex = -1;
			return SUCCESS;
		}
		
		totalPage = reservationlist.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < reservationlist.size()) {
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
			endIndex = reservationlist.size() - 1;
		}
		
		return SUCCESS;
	}

	public String editReservation() {
		ReservationDAO reservationDao = new ReservationDAO();
		this.reservation = reservationDao.getReservation(id);
		this.bookid = this.reservation.getBook().getId();
		this.userid = this.reservation.getUser().getId();
		if (this.reservation != null) {
			return SUCCESS;
		}
		return ERROR;
	}

	public String saveReservation() {
		ReservationDAO reservationDao = new ReservationDAO();
		BookDAO bookDao = new BookDAO();
		UserDAO userDao = new UserDAO();
		this.reservation.setBook(bookDao.getBookbyId(bookid));
		this.reservation.setUser(userDao.getUser(userid));
		if (reservationDao.editReservation(this.reservation)) {
			return SUCCESS;
		}
		return ERROR;
	}
}
