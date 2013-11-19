package control.frontend;

import java.util.Vector;

import model.Author;
import model.Book;
import model.Category;
import DAO.AuthorDAO;
import DAO.BookDAO;
import DAO.CategoryDAO;

import com.opensymphony.xwork2.ActionSupport;

public class SearchFilterAction extends ActionSupport {


	/**
	 * 
	 */
	private static final int ITEM_PER_PAGE = 9;
	
	private static final long serialVersionUID = 2673049526552032051L;
	private int categoryid,authorid;
	private String categoryName = "",authorName="";
	private String title="";
	private Vector<Book> booksResult;
	private String actionName="";
	private int page, totalPage, startIndex, endIndex;
	private long priceMax,priceMin;
	private Vector<Book> newBooks;
	private Vector<Category> categories;
	private Vector<Author> authors;
	public String filterBook(){
		BookDAO bd = new BookDAO();
		CategoryDAO cd = new CategoryDAO();
		AuthorDAO ad = new AuthorDAO();
		booksResult = bd.searchFilterBook(title, categoryid, authorid, authorName, priceMax, priceMin);
		actionName = "filter";
		newBooks = bd.getNewBooks(10);
		categories = cd.find("");
		authors = ad.find("");
		System.out.println(booksResult.size());
		genPage();
		return SUCCESS;
	}
	
	public void genPage(){
		if(this.booksResult.size()==0){
			endIndex = -1;
			return;
		}
		totalPage = booksResult.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < booksResult.size()) {
			totalPage++;
		}
		System.out.println("totalPage:" + totalPage);
		if (page <= 0) {
			page = 1;
		}
		startIndex = (page - 1) * ITEM_PER_PAGE;
		if (page != totalPage) {
			endIndex = page * ITEM_PER_PAGE - 1;
		} else {
			endIndex = booksResult.size() - 1;
		}
	}

	

	public Vector<Category> getCategories() {
		return categories;
	}

	public void setCategories(Vector<Category> categories) {
		this.categories = categories;
	}

	public Vector<Book> getNewBooks() {
		return newBooks;
	}

	public void setNewBooks(Vector<Book> newBooks) {
		this.newBooks = newBooks;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Vector<Book> getBooksResult() {
		return booksResult;
	}

	public void setBooksResult(Vector<Book> booksResult) {
		this.booksResult = booksResult;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getEndIndex() {
		return endIndex;
	}

	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public long getPriceMax() {
		return priceMax;
	}

	public void setPriceMax(long priceMax) {
		this.priceMax = priceMax;
	}

	public long getPriceMin() {
		return priceMin;
	}

	public void setPriceMin(long priceMin) {
		this.priceMin = priceMin;
	}

	public int getAuthorid() {
		return authorid;
	}

	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	
}
