package control.frontend;

import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import model.Author;
import model.Book;
import model.Category;
import model.Publisher;

import org.apache.struts2.interceptor.ServletRequestAware;

import DAO.BookDAO;

import com.opensymphony.xwork2.ActionSupport;

public class BookDetailAction extends ActionSupport implements
		ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1816400601170145540L;
	private int id;
	private Publisher publisherBean;
	private Author authorBean;
	private Category categoryBean;
	private Book bookBean;
	private Vector<Book> authorBooks;
	
	public Vector<Book> getAuthorBooks() {
		return authorBooks;
	}

	public void setAuthorBooks(Vector<Book> authorBooks) {
		this.authorBooks = authorBooks;
	}

	public Book getBookBean() {
		return bookBean;
	}

	public void setBookBean(Book bookBean) {
		this.bookBean = bookBean;
	}

	public String excute() throws Exception{
		BookDAO bd = new BookDAO();
		bookBean = bd.getBookbyId(id);
		authorBooks = bd.getBooksByAuthorId(bookBean.getAuthor().getId());
		System.out.println(id);
		System.out.println(bookBean.getId());
		return SUCCESS;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public Publisher getPublisherBean() {
		return publisherBean;
	}


	public void setPublisherBean(Publisher publisherBean) {
		this.publisherBean = publisherBean;
	}


	public Author getAuthorBean() {
		return authorBean;
	}


	public void setAuthorBean(Author authorBean) {
		this.authorBean = authorBean;
	}


	public Category getCategoryBean() {
		return categoryBean;
	}


	public void setCategoryBean(Category categoryBean) {
		this.categoryBean = categoryBean;
	}


	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub

	}

}
