package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import model.Category;

public class CategoryDAO implements IObjectDAO {
	Connection conn;


	public Vector<Category> find(String name) {
		conn = DBConnection.getConn().getConnection();
		StringBuffer query = new StringBuffer("select * from tblCategory ");

		if (name.length() > 0) {
			query.append("where name like '%" + name + "%'");
		}
		System.out.println(query);

		java.sql.Statement st;
		ResultSet rs = null;
		Vector<Category> result = new Vector<>();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query.toString());

			while (rs.next()) {
				Category u = new Category();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				result.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public Category getCategory(int id) {
		conn = DBConnection.getConn().getConnection();
		String query = "select * from tblcategory where id = " + id;
		java.sql.Statement st;
		ResultSet rs = null;

		Category u = new Category();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);

			if (rs.next()) {
				u.setName(rs.getString("name"));
				u.setId(rs.getInt("id"));
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean saveCategory(Category category) {
		conn = DBConnection.getConn().getConnection();
		String query = "update tblcategory set name = ?"
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, category.getName());
			pr.setInt(2, category.getId());
			if (!pr.execute()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean newCategory(Category category){
		conn = DBConnection.getConn().getConnection();
		String query = "insert into tblcategory (id,name) values (?,?)";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setInt(1, category.getId());
			pr.setString(2, category.getName());
			if(!pr.execute()){
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
		String query = "delete from tblcategory where id = "+id;
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			if(!pr.execute()){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
