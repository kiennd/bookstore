package DAO;



import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Vector;





<<<<<<< HEAD
=======



>>>>>>> 7d060cb28a40255583b9f01ad06ada2a8675ae7a
import model.Order;


public class OrderDAO {
	DBConnection dbConnection;
	Connection conn;
	public OrderDAO() {
		dbConnection = DBConnection.getConn();
		conn = dbConnection.getConnection();
	}
	
	public boolean editOrder(Order order) {
		 
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
			pstm.setInt(1, order.getUser().getId());
			pstm.setInt(2, order.getBook().getId());
			pstm.setInt(3, order.getPaymentMethod().getId());
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
	
	public boolean saveNewOrder(Order order) {
		 
		String sql = "insert into tblorder(id,userID,bookID,paymentMethodID,"
				+ "orderDate,discount,price,quantity,cardnumber,cardverificationnumber,nameoncard) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstm;
		try {
			Calendar cal = Calendar.getInstance();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, order.getId());
			pstm.setInt(2, order.getUser().getId());
			pstm.setInt(3, order.getBook().getId());
			pstm.setInt(4, 1);
			pstm.setDate(5, new Date(cal.getTime().getTime()));
			pstm.setFloat(6, order.getDiscount());
			pstm.setInt(7, order.getPrice());
			pstm.setInt(8, order.getQuantity());
			pstm.setLong(9, order.getCardnumber());
			pstm.setLong(10, order.getCardverificationnumber());
			pstm.setString(11, order.getNameoncard()==null?"":order.getNameoncard());

			
			return !pstm.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	public Order getOrder(int id) {
		 
		String sql = "select * from tblorder where id=?";
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			ResultSet rs = pstm.executeQuery();
			Order order = new Order();
			if (rs.next()) {
				UserDAO userDao = new UserDAO();
				BookDAO bookDao = new BookDAO();
				PaymentMethodDAO paymentMethodDao = new PaymentMethodDAO();
				order.setId(rs.getInt("id"));
				order.setUser(userDao.getUser(rs.getInt("userID")));
				order.setBook(bookDao.getBookbyId(rs.getInt("bookID")));
				order.setPaymentMethod(paymentMethodDao.getPaymentMethod(rs.getInt("paymentMethodID")));
				order.setPrice(rs.getInt("price"));
				order.setQuantity(rs.getInt("quantity"));
				order.setDiscount(rs.getFloat("discount"));
				order.setOrderDate(rs.getDate("orderDate"));
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
		 
		String sql = "select o.*, u.*, b.*, p.* " +
					 		"from tblOrder o " +
					 		"Inner Join tblUser as u on o.userID = u.id " +
					 		"Inner Join tblBook as b on o.bookID = b.id " +
					 		"Inner Join tblPaymentMethod as p on o.paymentMethodID = p.id";	 
		if (searchKey!=null) {
			sql +=" Where u.fullname LIKE '%"+searchKey+"%' or b.title LIKE '%"+searchKey+"%' or p.methodDescription LIKE '%"+searchKey+"%'";
		}
		//String sql = "select * from tblorder";
		
		PreparedStatement pstm;
		try {
			pstm = conn.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Order order = new Order();
				UserDAO userDao = new UserDAO();
				BookDAO bookDao = new BookDAO();
				PaymentMethodDAO paymentMethodDao = new PaymentMethodDAO();
				
				order.setId(rs.getInt("o.id"));
				order.setUser(userDao.getUser(rs.getInt("o.userID")));
				order.setBook(bookDao.getBookbyId(rs.getInt("o.bookID")));
				order.setPaymentMethod(paymentMethodDao.getPaymentMethod(rs.getInt("o.paymentMethodID")));
				order.setPrice(rs.getInt("o.price"));
				order.setQuantity(rs.getInt("o.quantity"));
				order.setDiscount(rs.getFloat("o.discount"));
				order.setOrderDate(rs.getDate("o.orderDate"));
				orderList.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orderList;
	}
}
