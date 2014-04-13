package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;

import model.Author;

public class AuthorDAO implements IObjectDAO {
	Connection conn;

	public boolean addAuthor(Author author) {
		conn = DBConnection.getConn().getConnection();

		String query = "insert into tblauthor values (?,?,?,?,?)";
		PreparedStatement pr;
		try {
			pr = conn.prepareStatement(query);
			pr.setInt(1, author.getId());
			pr.setString(2, author.getName());
			pr.setDate(3, author.getDateOfBirth());
			pr.setString(4, author.getDescription());
			pr.setString(5, author.getImageLink());

			int i = pr.executeUpdate();
			if (i != -1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public ArrayList<Author> returnNumberOfResult() {
		conn = DBConnection.getConn().getConnection();
		ArrayList<Author> list = new ArrayList<>();
		String query = "select * from tblauthor";
		PreparedStatement pr;
		try {

			pr = conn.prepareStatement(query);
			ResultSet re = pr.executeQuery();
			while (re.next()) {
				Author author = new Author(re.getInt("id"),
						re.getString("name"), re.getString("description"),
						re.getString("imageurl"), re.getDate("dateOfBirth"));
				list.add(author);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	public boolean updateAuthor(int id, Author author) {
		conn = DBConnection.getConn().getConnection();
		String query = "update tblauthor set name = ?, dateOfBirth = ?, description = ? , imageurl = ?"
				+ "where id = ?";
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			pr.setString(1, author.getName());
			pr.setDate(2, (Date) author.getDateOfBirth());
			pr.setString(3, author.getDescription());
			pr.setString(4, author.getImageLink());
			pr.setInt(5, id);
			int i = pr.executeUpdate();
			if (i != -1) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public boolean deleteAuthor(int id) {
		conn = DBConnection.getConn().getConnection();
		String query = "delete from tblauthor where id = " + id;
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			int i = pr.executeUpdate();
			if (i != -1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	/*
	 * Find authors
	 */

	public Author getAuthorHightLight() {
		Author author = new Author();

		conn = DBConnection.getConn().getConnection();
		String sql = "select a.*,o.*,b.*,sum(o.quantity) as su "
				+ " from tblauthor as a"
				+ " inner join tblbook as b on b.authorid = a.id"
				+ " inner join tblorder as o on o.bookid = b.id"
				+ " group by a.id" + " order by su desc";
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet re = st.executeQuery(sql.toString());
			if (re.next()) {
				author = new Author(re.getInt("a.id"), re.getString("a.name"),
						re.getString("a.description"), re.getString("a.imageurl"),
						re.getDate("a.dateOfBirth"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return author;
	}

	public Vector<Author> find(String name) {
		conn = DBConnection.getConn().getConnection();
		Vector<Author> authors = new Vector<>();

		try {
			StringBuffer query = new StringBuffer("select * from tblauthor");
			if (name.length() > 0) {
				query.append(" where name like  '%" + name + "%'");
			}
			Statement st = conn.createStatement();
			ResultSet re = st.executeQuery(query.toString());
			while (re.next()) {
				Author author = new Author(re.getInt("id"),
						re.getString("name"), re.getString("description"),
						re.getString("imageurl"), re.getDate("dateOfBirth"));
				authors.add(author);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return authors;
	}

	@Override
	public boolean delete(int id) {
		conn = DBConnection.getConn().getConnection();
		String query = "delete from tblauthor where id = " + id;
		try {
			PreparedStatement pr = conn.prepareStatement(query);
			int i = pr.executeUpdate();
			if (i != -1) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}


}
