package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import model.Book;
import model.Reservation;
import model.User;

public class ReservationDAO {
	DBConnection dbConnection;
	Connection conn;
	
	public ReservationDAO() {
		dbConnection = DBConnection.getConn();
		conn = dbConnection.getConnection();	
	}
	
	public boolean editReservation(Reservation reservation) {
		
		String updatesql = "update tblreservation set userID = ?,"
				+ " bookID = ?,"
				+ " initDate = ?"
				+ " where id = ?";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(updatesql);
			pstm.setInt(1, reservation.getUser().getId());
			pstm.setInt(2, reservation.getBook().getId());
			pstm.setDate(3, (Date) reservation.getInitDate());
			pstm.setInt(4, reservation.getId());
			return !pstm.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
	}
	
	public Reservation getReservation(int id) {
		
		String sql = "select * from tblreservation where id=?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			Reservation reservation = new Reservation();
			if (rs.next()) {
				UserDAO userDao = new UserDAO();
				BookDAO bookDao = new BookDAO();
				reservation.setId(rs.getInt("id"));
				reservation.setUser(userDao.getUser(rs.getInt("userID")));
				reservation.setBook(bookDao.getBookbyId(rs.getInt("bookID")));
				reservation.setInitDate(rs.getDate("initDate"));
				return reservation;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public Vector<Reservation> searchReservation(String searchKey) {
		Vector<Reservation> reservationList = new Vector<>();
		
		String sql = "select r.*, u.*,b.* " +
					 		"from tblReservation r " +
					 		"Inner Join tblUser as u on r.userID = u.id " +
					 		"Inner Join tblBook as b on r.bookID = b.id ";
		if (searchKey!=null) {
			sql +=" Where u.fullname LIKE '%"+searchKey+"%' or b.title LIKE '%"+searchKey+"%'";
		}
		//String sql = "select * from tblreservation";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Reservation reservation = new Reservation();
				UserDAO userDao = new UserDAO();
				BookDAO bookDao = new BookDAO();
				reservation.setId(rs.getInt("r.id"));
				reservation.setUser(userDao.getUser(rs.getInt("u.id")));
				reservation.setBook(bookDao.getBookbyId(rs.getInt("b.id")));
				reservation.setInitDate(rs.getDate("r.initDate"));				
				reservationList.add(reservation);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return reservationList;
	}
	
	public Vector<Reservation> getReservationByUser(User user) {
		
		String sql = "select * from tblreservation where userID = " + user.getId();
		Statement st;
		Vector<Reservation> rslist = new Vector<>();
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) {
				BookDAO bookDao = new BookDAO();
				Book book = bookDao.getBookbyId(rs.getInt("bookID"));
				Reservation reservation = new Reservation();
				reservation.setId(rs.getInt("id"));
				
				reservation.setBook(book);
				reservation.setUser(user);
				reservation.setInitDate(rs.getDate("initDate"));
				rslist.add(reservation);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rslist;
		
	}
}
