package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import model.Publisher;

public class PublisherDAO implements IObjectDAO{
	Connection conn;

	public boolean addPublisher(Publisher publisher) {
		conn = DBConnection.getConn().getConnection();

		String query = "insert into tblpublisher values (?,?,?,?)";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			pr.setInt(1, publisher.getId());
			pr.setString(2, publisher.getName());
			pr.setString(3, publisher.getAddress());
			pr.setString(4, publisher.getDescription());
			
			int i = pr.executeUpdate();
			if(i!= -1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public ArrayList<Publisher> returnNumberOfResult() {
		conn = DBConnection.getConn().getConnection();
		ArrayList<Publisher> list = new ArrayList<>();
		String query = "select * from tblpublisher";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			ResultSet re = pr.executeQuery();
			while(re.next()){
				Publisher p = new Publisher(re.getInt("id"), re.getString("name"),re.getString("address"),re.getString("description"));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	public boolean updatePublisher(int id, Publisher publisher) {
		conn = DBConnection.getConn().getConnection();
		String query = "update tblpublisher set name = ?, address = ?, description = ? "
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, publisher.getName());
			pr.setString(2, publisher.getAddress());
			pr.setString(3, publisher.getDescription());
			pr.setInt(4,id);
			int i = pr.executeUpdate();
			if(i!=-1){
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	/*
	 * Find publishers
	 * 
	 */
	public Vector<Publisher> find(String name){
		conn = DBConnection.getConn().getConnection();
		Vector<Publisher> publisers = new Vector<>();
		try {
			StringBuffer query = new StringBuffer("select * from tblpublisher");
			if(name.length()>0){
				query.append(" where name like  '%" + name + "%'"
						+ " or description  like '%" + name + "%'"
						+ " or address  like '%" + name + "%'");
			}
			Statement st = conn.createStatement();
			ResultSet re = st.executeQuery(query.toString());
			while(re.next()){
				Publisher p = new Publisher(re.getInt("id"), re.getString("name"),re.getString("address"),re.getString("description"));
				publisers.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return publisers;
	}

	@Override
	public boolean delete(int id) {
		conn = DBConnection.getConn().getConnection();
		String query = "delete from tblpublisher where id = "+id;
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			int i = pr.executeUpdate();
			if(i!=-1){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	
}
