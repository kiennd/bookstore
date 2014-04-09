package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import model.PaymentMethod;

public class PaymentMethodDAO {
	DBConnection dbConnection;
	Connection conn;
	
	public PaymentMethodDAO() {
		dbConnection = DBConnection.getConn();
		conn = dbConnection.getConnection();	
	}

	public Vector<PaymentMethod> find(String methodDescription) {
		 
		StringBuffer query = new StringBuffer("select * from tblPaymentMethod ");

		if (methodDescription.length() > 0) {
			query.append("where methodDescription like '%" + methodDescription + "%'");
		}
		System.out.println(query);

		java.sql.Statement st;
		ResultSet rs = null;
		Vector<PaymentMethod> result = new Vector<>();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query.toString());

			while (rs.next()) {
				PaymentMethod u = new PaymentMethod();
				u.setId(rs.getInt("id"));
				u.setMethodDescription(rs.getString("methodDescription"));
				result.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public PaymentMethod getPaymentMethod(int id) {
		 
		String query = "select * from tblpaymentMethod where id = " + id;
		java.sql.Statement st;
		ResultSet rs = null;

		PaymentMethod u = new PaymentMethod();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(query);

			if (rs.next()) {
				u.setMethodDescription(rs.getString("methodDescription"));
				u.setId(rs.getInt("id"));
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}

	public boolean savePaymentMethod(PaymentMethod paymentMethod) {
		 
		String query = "update tblpaymentMethod set methodDescription = ?"
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, paymentMethod.getMethodDescription());
			pr.setInt(2, paymentMethod.getId());
			if (!pr.execute()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
	
	public boolean deletePaymentMethod(int id){
		 
		String query = "delete from tblpaymentMethod where id = "+id;
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
	
	public boolean newPaymentMethod(PaymentMethod paymentMethod){
		 
		String query = "insert into tblpaymentMethod (id,methodDescription) values (?,?)";
		try {		
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setInt(1, paymentMethod.getId());
			pr.setString(2, paymentMethod.getMethodDescription());
			if(!pr.execute()){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
