package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import model.Role;
import model.User;

public class UserDAO {
	Connection conn;

	public boolean checkLogin(User user) {
		conn = DBConnection.getConn();

		String query = "select * from tbluser where username = ? and password = ? and roleid = 1";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			pr.setString(1, user.getUsername());
			pr.setString(2, user.getPassword());

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public int checkUserLogin(User user) {
		conn = DBConnection.getConn();
		int id = -1;
		String query = "select * from tbluser where username = ? and password = ? and roleid = 2";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			pr.setString(1, user.getUsername());
			pr.setString(2, user.getPassword());

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				id = rs.getInt("id");
				return id;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	public Vector<User> findUser(String name) {
		conn = DBConnection.getConn();
		StringBuffer query = new StringBuffer("select * from tblUser as u "
				+ "Inner join tblrole as r on u.roleid = r.id "
				+ "order by u.id");

		if (name.length() > 0) {
			query.append("where u.username like '%" + name + "%' or ");
			query.append("u.fullName like '%" + name + "%' or ");
			query.append("u.phonenumber like '%" + name + "%' or ");
			query.append("r.description like '%" + name + "%' or ");
			query.append("r.role like '%" + name + "%'");
		}
		System.out.println(query);

		java.sql.Statement st;
		ResultSet rs = null;
		Vector<User> result = new Vector<>();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query.toString());

			while (rs.next()) {
				User u = new User();
				u.setUsername(rs.getString("u.username"));
				u.setId(rs.getInt("u.id"));
				u.setPhonenumber(rs.getString("u.phoneNumber"));
				u.setFullname(rs.getString("u.fullName"));
				
				Role r = new Role();
				r.setDescription(rs.getString("r.description"));
				r.setRole(rs.getString("r.role"));
				r.setId(rs.getInt("r.id"));
				
				u.setRole(r);
				result.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public User getUser(int id) {
		conn = DBConnection.getConn();
		String query = "select * from tbluser as u "
				+ "Inner join tblrole as r on u.roleid = r.id where u.id=" + id
				+ " order by u.id";
		java.sql.Statement st;
		ResultSet rs = null;

		User u = new User();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);

			if (rs.next()) {
				u = new User();
				u.setUsername(rs.getString("u.username"));
				u.setId(rs.getInt("u.id"));
				u.setPhonenumber(rs.getString("u.phoneNumber"));
				u.setFullname(rs.getString("u.fullName"));
				
				Role r = new Role();
				r.setDescription(rs.getString("r.description"));
				r.setRole(rs.getString("r.role"));
				r.setId(rs.getInt("r.id"));
				
				u.setRole(r);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean saveUser(User user) {
		conn = DBConnection.getConn();
		String query = "update tbluser set username = ?, roleid = ?, fullname= ?, phonenumber = ? "
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, user.getUsername());
			pr.setInt(2, user.getRole().getId());
			pr.setString(3, user.getFullname());
			pr.setString(4, user.getPhonenumber());
			pr.setInt(5, user.getId());
			if (!pr.execute()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean saveUserFront(User user) {
		conn = DBConnection.getConn();
		String query = "update tbluser set username = ?, fullname= ?, phoneNumber = ? "
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, user.getUsername());
			pr.setString(2, user.getFullname());
			pr.setString(3, user.getPhonenumber());
			pr.setInt(4, user.getId());
			if (!pr.execute()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean deleteUser(int id){
		conn = DBConnection.getConn();
		String query = "delete from tbluser where id = "+id;
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
	
	public boolean newUser(User user){
		conn = DBConnection.getConn();
		String query = "insert into tbluser (id,username,password,roleid,fullname,phonenumber) values (?,?,?,?,?,?)";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setInt(1, user.getId());
			pr.setString(2, user.getUsername());
			pr.setString(3, user.getPassword());
			pr.setInt(4, user.getRole().getId());
			pr.setString(5, user.getFullname());
			pr.setString(6, user.getPhonenumber());
			
			if(!pr.execute()){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean checkUserExist(String username) {
		conn = DBConnection.getConn();
		String query = "select * from tbluser where username = ? and roleid = 2";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			pr.setString(1, username);

			ResultSet rs = pr.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
