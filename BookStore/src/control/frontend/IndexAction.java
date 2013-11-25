package control.frontend;

import java.util.Vector;

import model.Author;
import model.Book;
import DAO.AuthorDAO;
import DAO.BookDAO;

import com.opensymphony.xwork2.ActionSupport;

public class IndexAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7960078865896604657L;

	private Vector<Book> newBooks = new Vector<>();
	private Vector<Book> bestSellingBooks = new Vector<>();
	private Author authorHightLight;
	private Vector<Book> authorBooks;

	public String initIndex() {
		BookDAO bd = new BookDAO();
		newBooks = bd.getNewBooks(10);
		bestSellingBooks = bd.getBestSellingBook(10);
		
		AuthorDAO ad = new AuthorDAO();
		authorHightLight = ad.getAuthorHightLight();
		authorBooks = bd.getBooksByAuthorId(authorHightLight.getId());
		return SUCCESS;
	}
	
	
	public Author getAuthorHightLight() {
		return authorHightLight;
	}


	public void setAuthorHightLight(Author authorHightLight) {
		this.authorHightLight = authorHightLight;
	}



	public Vector<Book> getAuthorBooks() {
		return authorBooks;
	}



	public void setAuthorBooks(Vector<Book> authorBooks) {
		this.authorBooks = authorBooks;
	}



	public Vector<Book> getNewBooks() {
		return newBooks;
	}

	public void setNewBooks(Vector<Book> newBooks) {
		this.newBooks = newBooks;
	}

	public Vector<Book> getBestSellingBooks() {
		return bestSellingBooks;
	}

	public void setBestSellingBooks(Vector<Book> bestSellingBooks) {
		this.bestSellingBooks = bestSellingBooks;
	}

}
