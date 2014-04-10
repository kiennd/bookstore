package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Vector;

import model.Author;
import model.Book;
import model.Category;
import model.Publisher;

public class BookDAO {
	DBConnection dbConnection;
	Connection conn;
	
	public BookDAO() {
		dbConnection = DBConnection.getConn();
		conn = dbConnection.getConnection();
	}

	public Book getBookbyId(int id) {
		String sql =  "select b.*,c.*,p.*,a.* " + "From tblbook as b "
				+ "Inner join tblcategory as c on c.id = b.categoryid "
				+ "Inner join tblpublisher as p on p.id = b.publisherid "
				+ "Inner join tblauthor as a on a.id = b.authorid "
				+ " Where b.id= "+id
				+ " order by b.dateupdate";
		Book b = new Book();
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			ResultSet rs = pre.executeQuery();
			while (rs.next()) {
				b = new Book();
				Category c = new Category();
				c.setId(rs.getInt("b.categoryid"));
				c.setName(rs.getString("c.name"));

				Publisher p = new Publisher();
				p.setId(rs.getInt("b.publisherid"));
				p.setAddress(rs.getString("p.address"));
				p.setDescription(rs.getString("p.description"));
				p.setName(rs.getString("p.name"));

				Author a = new Author();
				a.setId(rs.getInt("a.id"));
				a.setName(rs.getString("a.name"));
				a.setDescription(rs.getString("a.description"));
				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

				b.setAuthor(a);
				b.setCategory(c);
				b.setPublisher(p);
				b.setDescription(rs.getString("b.description"));
				b.setId(rs.getInt("b.id"));
				b.setImageurl(rs.getString("b.imageurl"));
				b.setPrice(rs.getLong("b.price"));
				b.setTitle(rs.getString("b.title"));
				return b;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}

	
	public Vector<Book> vecBook(String name) {
		Vector<Book> vec = new Vector<>();
		String sql = "select b.*,c.*,p.*,a.* " + "From tblbook as b "
				+ "Inner join tblcategory as c on c.id = b.categoryid "
				+ "Inner join tblpublisher as p on p.id = b.publisherid "
				+ "Inner join tblauthor as a on a.id = b.authorid ";
		if (name.length() > 0) {
			sql = sql + " where b.title like '%" + name + "%' or ";
			sql = sql + " b.description like '%" + name + "%'";
		}
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			ResultSet rs = pre.executeQuery();
			vec = resultsetToBooks(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return vec;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public boolean newBook(Book book) {
		String sql = "insert into tblbook(id,publisherid,authorid,description,title,categoryid,price,imageurl,dateupdate) values (?,?,?,?,?,?,?,?,?)";
		System.out.println(sql);
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			pre.setInt(1, book.getId());
			pre.setInt(2, book.getPublisher().getId());
			pre.setInt(3, book.getAuthor().getId());
			pre.setString(4, book.getDescription());
			pre.setString(5, book.getTitle());
			pre.setInt(6, book.getCategory().getId());
			pre.setLong(7, book.getPrice());
			pre.setString(8, book.getImageurl());
	    	Calendar cal = Calendar.getInstance();
			pre.setTimestamp(9,new Timestamp(cal.getTimeInMillis()));
			if (!pre.execute()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean deleteBook(int id) {
		try {
			Statement st = conn.createStatement();
			String sql = "delete from tblstore where bookid = " + id;
			if (st.execute(sql))
				return false;
			sql = "delete from tblorder where bookid = " + id;
			if (st.execute(sql))
				return false;
			sql = "delete from tblreservation where bookid = " + id;
			if (st.execute(sql))
				return false;
			sql = "delete from tblbook where id = " + id;
			if (st.execute(sql))
				return false;
			return true;

		} catch (Exception e) {
		}
		return false;
	}

	public boolean saveBook(Book book) {
		String sql = "update tblbook set publisherID = ?, authorID = ?, description = ?, title = ?, categoryID = ?, price = ? where id = ?";
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			pre.setInt(1, book.getPublisher().getId());
			pre.setInt(2, book.getAuthor().getId());
			pre.setString(3, book.getDescription());
			pre.setString(4, book.getTitle());
			pre.setInt(5, book.getCategory().getId());
			pre.setLong(6, book.getPrice());
			pre.setInt(7, book.getId());
			if (!pre.execute()) {
				return true;
			}
		} catch (Exception e) {
		}
		return false;
	}

	public Vector<Book> getNewBooks(int numBook) {
		Vector<Book> result = new Vector<>();
		try {
			String sql = "select b.*,c.*,p.*,a.* " + "From tblbook as b "
					+ "Inner join tblcategory as c on c.id = b.categoryid "
					+ "Inner join tblpublisher as p on p.id = b.publisherid "
					+ "Inner join tblauthor as a on a.id = b.authorid "
					+ " order by b.dateupdate";
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			int count = 0;

			while (rs.next() && count < numBook) {
				count++;
				Book b = new Book();
				Category c = new Category();
				c.setId(rs.getInt("b.categoryid"));
				c.setName(rs.getString("c.name"));

				Publisher p = new Publisher();
				p.setId(rs.getInt("b.publisherid"));
				p.setAddress(rs.getString("p.address"));
				p.setDescription(rs.getString("p.description"));
				p.setName(rs.getString("p.name"));

				Author a = new Author();
				a.setId(rs.getInt("a.id"));
				a.setName(rs.getString("a.name"));
				a.setDescription(rs.getString("a.description"));
				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

				b.setAuthor(a);
				b.setCategory(c);
				b.setPublisher(p);
				b.setDescription(rs.getString("b.description"));
				b.setId(rs.getInt("b.id"));
				b.setImageurl(rs.getString("b.imageurl"));
				b.setPrice(rs.getLong("b.price"));
				b.setTitle(rs.getString("b.title"));
				result.add(b);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}
	
//	public Vector<Book> getBestSellingBook(int numBook){
//		Vector<Book> result = new Vector<>();
//		try {
//			String sql = "select b.*,c.*,p.*,a.* " + "From tblbook as b "
//					+ "Inner join tblcategory as c on c.id = b.categoryid "
//					+ "Inner join tblpublisher as p on p.id = b.publisherid "
//					+ "Inner join tblauthor as a on a.id = b.authorid "
//					+ " order by b.id";
//			Statement st = conn.createStatement();
//			ResultSet rs = st.executeQuery(sql);
//			int count = 0;
//
//			while (rs.next() && count < numBook) {
//				count++;
//				Book b = new Book();
//				Category c = new Category();
//				c.setId(rs.getInt("b.categoryid"));
//				c.setName(rs.getString("c.name"));
//
//				Publisher p = new Publisher();
//				p.setId(rs.getInt("b.publisherid"));
//				p.setAddress(rs.getString("p.address"));
//				p.setDescription(rs.getString("p.description"));
//				p.setName(rs.getString("p.name"));
//
//				Author a = new Author();
//				a.setId(rs.getInt("a.id"));
//				a.setName(rs.getString("a.name"));
//				a.setDescription(rs.getString("a.description"));
//				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));
//
//				b.setAuthor(a);
//				b.setCategory(c);
//				b.setPublisher(p);
//				b.setDescription(rs.getString("b.description"));
//				b.setId(rs.getInt("b.id"));
//				b.setImageurl(rs.getString("b.imageurl"));
//				b.setPrice(rs.getLong("b.price"));
//				b.setTitle(rs.getString("b.title"));
//				result.add(b);
//
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		return result;
//	}
	
	public Vector<Book> getBestSellingBook(int numBook){
		Vector<Book> result = new Vector<>();
		try {
			String sql = "select b.*,c.*,p.*,a.* " + "From tblbook as b "
					+ "Inner join tblcategory as c on c.id = b.categoryid "
					+ "Inner join tblpublisher as p on p.id = b.publisherid "
					+ "Inner join tblauthor as a on a.id = b.authorid "
					+ " order by b.id";
			conn = DBConnection.getConn().getConnection();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			int count = 0;

			while (rs.next() && count < numBook) {
				count++;
				Book b = new Book();
				Category c = new Category();
				c.setId(rs.getInt("b.categoryid"));
				c.setName(rs.getString("c.name"));

				Publisher p = new Publisher();
				p.setId(rs.getInt("b.publisherid"));
				p.setAddress(rs.getString("p.address"));
				p.setDescription(rs.getString("p.description"));
				p.setName(rs.getString("p.name"));

				Author a = new Author();
				a.setId(rs.getInt("a.id"));
				a.setName(rs.getString("a.name"));
				a.setDescription(rs.getString("a.description"));
				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

				b.setAuthor(a);
				b.setCategory(c);
				b.setPublisher(p);
				b.setDescription(rs.getString("b.description"));
				b.setId(rs.getInt("b.id"));
				b.setImageurl(rs.getString("b.imageurl"));
				b.setPrice(rs.getLong("b.price"));
				b.setTitle(rs.getString("b.title"));
				result.add(b);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public Vector<Book> getBestSellingBooks(int numBook) {

		Vector<Book> result = new Vector<>();
		try {
			String sql = "select  sum(quantity) as sum,bookid from tblOrder "
					+ "Group by bookid " + "order by sum desc " + "limit "
					+ 10;
			conn = (Connection) DBConnection.getConn();
			Statement st = conn.createStatement();
			ResultSet rs2 = st.executeQuery(sql);

			while (rs2.next()) {
				sql = "select b.*,c.*,p.*,a.* "
						+ "From tblbook as b "
						+ "Inner join tblcategory as c on c.id = b.categoryid "
						+ "Inner join tblpublisher as p on p.id = b.publisherid "
						+ "Inner join tblauthor as a on a.id = b.authorid "
						+ "where b.id =" + rs2.getInt("bookid");
				Statement st2 = conn.createStatement();
				ResultSet rs = st2.executeQuery(sql);
				result = resultsetToBooks(rs);
				rs.close();
				st2.close();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
	
	public Vector<Book> getBooksByCategoryId(int categoryid){
		Vector<Book> books = new Vector<>();
		String sql = "select b.*,c.*,p.*,a.* "
				+ "From tblbook as b "
				+ "Inner join tblcategory as c on c.id = b.categoryid "
				+ "Inner join tblpublisher as p on p.id = b.publisherid "
				+ "Inner join tblauthor as a on a.id = b.authorid "
				+ "where b.categoryid =" + categoryid;
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Book b = new Book();
				
				Category c = new Category();
				c.setId(rs.getInt("b.categoryid"));
				c.setName(rs.getString("c.name"));

				Publisher p = new Publisher();
				p.setId(rs.getInt("b.publisherid"));
				p.setAddress(rs.getString("p.address"));
				p.setDescription(rs.getString("p.description"));
				p.setName(rs.getString("p.name"));

				Author a = new Author();
				a.setId(rs.getInt("a.id"));
				a.setName(rs.getString("a.name"));
				a.setDescription(rs.getString("a.description"));
				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

				b.setAuthor(a);
				b.setCategory(c);
				b.setPublisher(p);
				b.setDescription(rs.getString("b.description"));
				b.setId(rs.getInt("b.id"));
				b.setImageurl(rs.getString("b.imageurl"));
				b.setPrice(rs.getLong("b.price"));
				b.setTitle(rs.getString("b.title"));
				books.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return books;
	}
	
	public Vector<Book> getBooksByAuthorId(int auid){
		Vector<Book> books = new Vector<>();
		String sql = "select b.*,c.*,p.*,a.* "
				+ "From tblbook as b "
				+ "Inner join tblcategory as c on c.id = b.categoryid "
				+ "Inner join tblpublisher as p on p.id = b.publisherid "
				+ "Inner join tblauthor as a on a.id = b.authorid "
				+ "where b.authorid =" + auid;
		Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Book b = new Book();
				Category c = new Category();
				c.setId(rs.getInt("b.categoryid"));
				c.setName(rs.getString("c.name"));

				Publisher p = new Publisher();
				p.setId(rs.getInt("b.publisherid"));
				p.setAddress(rs.getString("p.address"));
				p.setDescription(rs.getString("p.description"));
				p.setName(rs.getString("p.name"));

				Author a = new Author();
				a.setId(rs.getInt("a.id"));
				a.setName(rs.getString("a.name"));
				a.setDescription(rs.getString("a.description"));
				a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

				b.setAuthor(a);
				b.setCategory(c);
				b.setPublisher(p);
				b.setDescription(rs.getString("b.description"));
				b.setId(rs.getInt("b.id"));
				b.setImageurl(rs.getString("b.imageurl"));
				b.setPrice(rs.getLong("b.price"));
				b.setTitle(rs.getString("b.title"));
				books.add(b);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return books;
	}
	
	public Vector<Book> searchFilterBook(String title,int categoryid,int authorid,String authorName, long priceMax, long priceMin){
		Vector<Book> books = new Vector<>();
		Boolean isFirstParam = true;
		String sql = "select b.*,c.*,p.*,a.* " + "From tblbook as b "
				+ "Inner join tblcategory as c on c.id = b.categoryid "
				+ "Inner join tblpublisher as p on p.id = b.publisherid "
				+ "Inner join tblauthor as a on a.id = b.authorid where ";
		if (title.length() > 0) {
			isFirstParam= false;
			sql = sql + " b.title like '%" + title + "%'";
		}
		if(categoryid>0){
			if(isFirstParam==false){
				sql = sql+" and ";
			}else{
				isFirstParam = false;
			}
			sql = sql + " b.categoryid = " + categoryid + "";	
		}
		
		if(authorid>0){
			if(isFirstParam==false){
				sql = sql+" and ";
			}else{
				isFirstParam = false;
			}
			sql = sql + " a.id = " + authorid + "";	
		}
		if (authorName.length() > 0) {
			if(isFirstParam==false){
				sql = sql+" and ";
			}else{
				isFirstParam = false;
			}
			isFirstParam= false;
			sql = sql + " a.name like '%" + authorName + "%'";
		}
		
		if(priceMax>0){
			if(isFirstParam==false){
				sql = sql+" and ";
			}else{
				isFirstParam = false;
			}
			sql = sql + " b.price < " + priceMax + " and b.price > "+priceMin;	
		}
		try {
			java.sql.PreparedStatement pre = conn.prepareStatement(sql);
			ResultSet rs = pre.executeQuery();
			books = resultsetToBooks(rs);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return books;
	}
	
	public Vector<Book> resultsetToBooks(ResultSet rs) throws SQLException{
		Vector<Book> books = new Vector<>();
		while (rs.next()) {
			Book b = new Book();
			Category c = new Category();
			c.setId(rs.getInt("b.categoryid"));
			c.setName(rs.getString("c.name"));

			Publisher p = new Publisher();
			p.setId(rs.getInt("b.publisherid"));
			p.setAddress(rs.getString("p.address"));
			p.setDescription(rs.getString("p.description"));
			p.setName(rs.getString("p.name"));

			Author a = new Author();
			a.setId(rs.getInt("a.id"));
			a.setName(rs.getString("a.name"));
			a.setDescription(rs.getString("a.description"));
			a.setDateOfBirth(rs.getDate("a.dateOfBirth"));

			b.setAuthor(a);
			b.setCategory(c);
			b.setPublisher(p);
			b.setDescription(rs.getString("b.description"));
			b.setId(rs.getInt("b.id"));
			b.setImageurl(rs.getString("b.imageurl"));
			b.setPrice(rs.getLong("b.price"));
			b.setTitle(rs.getString("b.title"));
			books.add(b);
		}
		return books;
	}

}
