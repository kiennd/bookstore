package DAO;



import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;



import model.Order;

public class OrderDAO {

	public boolean editOrder(Order order) {
		Connection conn = DBConnection.getConn();
		String updatesql = "update tblorder set userID = ?,"
				+ " bookID = ?,"
				+ " paymentMethodID = ?,"
				+ " price = ?,"
				+ " quantity = ?,"
				+ " discount = ?,"
				+ " orderDate = ?"
				+ " where id = ?";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(updatesql);
			pstm.setInt(1, order.getUserID());
			pstm.setInt(2, order.getBookID());
			pstm.setInt(3, order.getPaymentMethodID());
			pstm.setInt(4, order.getPrice());
			pstm.setInt(5, order.getQuantity());
			pstm.setFloat(6, order.getDiscount());
			pstm.setDate(7, (Date) order.getOrderDate());
			pstm.setInt(8, order.getId());
			return !pstm.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
	}
	
	public Order getOrder(int id) {
		Connection conn = DBConnection.getConn();
		String sql = "select * from tblorder where id=?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			Order order = new Order();
			if (rs.next()) {
				order.setId(rs.getInt("id"));
				order.setUserID(rs.getInt("userID"));
				order.setBookID(rs.getInt("bookID"));
				order.setPaymentMethodID(rs.getInt("paymentMethodID"));
				order.setPrice(rs.getInt("price"));
				order.setQuantity(rs.getInt("quantity"));
				order.setDiscount(rs.getFloat("discount"));
				order.setOrderDate(rs.getDate("orderDate"));
				System.out.println(order.getOrderDate());
				return order;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public Vector<Order> searchOrder(String searchKey) {
		Vector<Order> orderList = new Vector<>();
		Connection conn = DBConnection.getConn();
//		String sql = "select o.id" +
//							"u.username," +
//					 		"b.title," +
//					 		"p.methodDescription," +
//					 		"o.quantiy," +
//					 		"o.discount," +
//					 		"o.orderDate" +
//					 		"from tblOrder o," +
//					 		"Inner Join tblUser as u on o.userID = u.id," +
//					 		"Inner Join tblBook as b on o.bookID = b.id," +
//					 		"Inner Join tblPaymentMethod as p on o.paymentMethodID = p.id";	 
//		if (searchKey!=null) {
//			sql +=" Where u.username LIKE %?% or b.title LIKE %?% or p.methodDescription LIKE %?%";
//		}
		String sql = "select * from tblorder";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Order order = new Order();
				order.setId(rs.getInt("id"));
				order.setUserID(rs.getInt("userID"));
				order.setBookID(rs.getInt("bookID"));
				order.setPaymentMethodID(rs.getInt("paymentMethodID"));
				order.setPrice(rs.getInt("price"));
				order.setQuantity(rs.getInt("quantity"));
				order.setDiscount(rs.getFloat("discount"));
				order.setOrderDate(rs.getDate("orderDate"));
				orderList.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}
}
