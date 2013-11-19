package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import model.Reservation;

public class ReservationDAO {

	public boolean editReservation(Reservation reservation) {
		Connection conn = DBConnection.getConn();
		String updatesql = "update tblreservation set userID = ?,"
				+ " bookID = ?,"
				+ " initDate = ?"
				+ " where id = ?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(updatesql);
			pstm.setInt(1, reservation.getUserID());
			pstm.setInt(2, reservation.getBookID());
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
		Connection conn = DBConnection.getConn();
		String sql = "select * from tblreservation where id=?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			Reservation reservation = new Reservation();
			if (rs.next()) {
				reservation.setId(rs.getInt("id"));
				reservation.setUserID(rs.getInt("userID"));
				reservation.setBookID(rs.getInt("bookID"));
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
		Connection conn = DBConnection.getConn();
//		String sql = "select o.id" +
//							"u.username," +
//					 		"b.title," +
//					 		"p.methodDescription," +
//					 		"o.quantiy," +
//					 		"o.discount," +
//					 		"o.reservationDate" +
//					 		"from tblReservation o," +
//					 		"Inner Join tblUser as u on o.userID = u.id," +
//					 		"Inner Join tblBook as b on o.bookID = b.id," +
//					 		"Inner Join tblPaymentMethod as p on o.paymentMethodID = p.id";	 
//		if (searchKey!=null) {
//			sql +=" Where u.username LIKE %?% or b.title LIKE %?% or p.methodDescription LIKE %?%";
//		}
		String sql = "select * from tblreservation";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Reservation reservation = new Reservation();
				reservation.setId(rs.getInt("id"));
				reservation.setUserID(rs.getInt("userID"));
				reservation.setBookID(rs.getInt("bookID"));
				reservation.setInitDate(rs.getDate("initDate"));
				reservationList.add(reservation);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return reservationList;
	}
}
