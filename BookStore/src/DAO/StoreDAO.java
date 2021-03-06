package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import model.Store;

public class StoreDAO implements IObjectDAO{
	Connection conn;

	public Vector<Store> findStore(String name) {
		conn = DBConnection.getConn().getConnection();
		StringBuffer query = new StringBuffer("select * from tblstore ");

		java.sql.Statement st;
		ResultSet rs = null;
		Vector<Store> result = new Vector<>();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query.toString());

			while (rs.next()) {
				Store s= new Store();
				s.setBookID(rs.getInt("bookID"));;
				s.setQuantity(rs.getInt("quantity"));
				result.add(s);
			}
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	public Store getStore(int id) {
		String sql = "select * from tblstore where bookId = ?";
		Store s=new Store();
		conn = DBConnection.getConn().getConnection();
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			pre.setInt(1, id);
			ResultSet rs = pre.executeQuery();

			while (rs.next()) {
				s.setBookID(rs.getInt("bookID"));
				s.setQuantity(rs.getInt("quantity"));
				return s;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	public boolean newStore(Store store) {
		conn = DBConnection.getConn().getConnection();
		String sql = "insert into tblstore values (?,?)";
		System.out.println(sql);
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			pre.setInt(1, store.getBookID());
			pre.setInt(2, store.getQuantity());

			if (!pre.execute()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("hau");
		}
		return false;
	}

	public boolean saveStore(Store store) {
		conn = DBConnection.getConn().getConnection();
		String query = "update tblstore set quantity=?" + " where bookID = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setInt(2, store.getBookID());
			pr.setInt(1, store.getQuantity());
			if (!pr.execute()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	

	@Override
	public boolean delete(int id) {
		conn = DBConnection.getConn().getConnection();
		try {
			String query = "delete from tblstore where bookid = " + id;
			PreparedStatement pr = conn.prepareStatement(query);
			if (!pr.execute()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	
}
