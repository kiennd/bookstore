package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Feedback;

public class FeedbackDAO implements IObjectDAO{
	public boolean newFeedback(Feedback f){
		Connection conn = DBConnection.getConn().getConnection();
		String query = "insert into tblfeedback (id,name,email,subject,message) values (?,?,?,?,?)";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setInt(1, f.getId());
			pr.setString(2, f.getName());
			pr.setString(3, f.getEmail());
			pr.setString(4, f.getSubject());
			pr.setString(5, f.getMessage());
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
		// TODO Auto-generated method stub
		return false;
	}
}
