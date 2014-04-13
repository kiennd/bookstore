package control.backend;

import java.io.File;
import java.io.IOException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import model.Author;
import model.Book;
import model.Category;
import model.Publisher;
import model.RecommendBooks;
import model.Store;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import DAO.AuthorDAO;
import DAO.BookDAO;
import DAO.CategoryDAO;
import DAO.PublisherDAO;
import DAO.StoreDAO;

import com.opensymphony.xwork2.ActionSupport;

import control.observer.Observer;
import control.observer.Subject;

public class BookAction extends ActionSupport implements ServletRequestAware, Subject{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2239889536224434478L;
	private Vector<Book> bookList;
	private Vector<Author> authors;
	private Vector<Publisher> publishers;
	private Vector<Category> categories;
	public static Vector<Observer> listObserver = new Vector<>();

	private String name = "";
	private int id;
	private Book bookBean;
	private int page, totalPage, startIndex, endIndex;
	private static final int ITEM_PER_PAGE = 20;
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;
	private HttpServletRequest request;
	private Store store;

	public BookAction() {
	}

	@Override
	public String execute() throws Exception {
		BookDAO bd = new BookDAO();
		this.bookList = bd.vecBook(name);
		if (this.bookList.size() == 0) {
			endIndex = -1;
			return SUCCESS;
		}

		totalPage = bookList.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < bookList.size()) {
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
			endIndex = bookList.size() - 1;
		}

		return SUCCESS;
	}

	public String saveBook() {
		BookDAO bd = new BookDAO();
		if (bd.saveBook(bookBean)) {
			if(tmpBook==null||bookBean.getPrice()!=tmpBook.getPrice()) {
				RecommendBooks.shareInstance().addABook(bookBean);
				this.notifyObservers("");
			}
			return SUCCESS;
		}
		return null;
	}

	public String deleteBook() throws Exception {
		BookDAO bd = new BookDAO();
		Book b = bd.getBookbyId(id);
		if (bd.deleteBook(id)){
			this.notifyObservers("Book '"+b.getTitle()+"' is not available in store");
			return SUCCESS;
		}else
			return ERROR;
	}

	Book tmpBook;
	public String edit() throws Exception {
		BookDAO bd = new BookDAO();
		getComboboxContent();
		this.bookBean = bd.getBookbyId(id);
		// so sanh gia
		tmpBook = this.bookBean;
		return SUCCESS;
	}
	
	public void getComboboxContent(){
		CategoryDAO cd = new CategoryDAO();
		categories = cd.find("");
		this.publishers = new Vector<>();
		PublisherDAO pd = new PublisherDAO();
		this.publishers = pd.find("");
		AuthorDAO ad = new AuthorDAO();
		this.authors = ad.find("");
	}
	
	public String newShow() throws Exception {
		getComboboxContent();
		return SUCCESS;
	}
	
	public String newBook() throws Exception {
		BookDAO bd = new BookDAO();
		StoreDAO sd = new StoreDAO();
		try {
			if (fileUpload != null) {
				String filePath = request.getRealPath("images\\books\\");
				File destFile = new File(filePath, fileUploadFileName);
				FileUtils.copyFile(fileUpload, destFile);
				this.bookBean.setImageurl(fileUploadFileName);
				System.out.println(destFile.getName());
			}
		} catch (IOException e) {
			e.printStackTrace();
			return ERROR;
		}
		
		try {
			store.setBookID(bookBean.getId());
			if(!sd.saveStore(store)){
				return ERROR;
			}
			if (bd.newBook(bookBean)) {
				this.notifyObservers("We are offering new book: '"+bookBean.getTitle()+"'");
				return SUCCESS;
			} else {
				addActionError("Item create false!");
				sd.delete(bookBean.getId());
				return ERROR;
			}
		} catch (Exception e) {
			addActionError(e.toString());
			return ERROR;
		}
	}

	
	public HttpServletRequest getRequest() {
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	public Store getStore() {
		return store;
	}
	public void setStore(Store store) {
		this.store = store;
	}
	public Vector<Book> getBookList() {
		return bookList;
	}
	public void setBookList(Vector<Book> bookList) {
		this.bookList = bookList;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Book getBookBean() {
		return bookBean;
	}
	public void setBookBean(Book bookBean) {
		this.bookBean = bookBean;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Vector<Author> getAuthors() {
		return authors;
	}

	public void setAuthors(Vector<Author> authors) {
		this.authors = authors;
	}

	public Vector<Publisher> getPublishers() {
		return publishers;
	}

	public void setPublishers(Vector<Publisher> publishers) {
		this.publishers = publishers;
	}

	public Vector<Category> getCategories() {
		return categories;
	}

	public void setCategories(Vector<Category> categories) {
		this.categories = categories;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
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

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
	}

	public static void registerObserver(Observer observer) {
		// TODO Auto-generated method stub
		listObserver.add(observer);
	}

	public static void removeObserver(Observer observer) {
		// TODO Auto-generated method stub
		listObserver.remove(observer);
	}

	@Override
	public void notifyObservers(String s) {
		// TODO Auto-generated method stub
		System.out.println("Notify to clients");
		for(Observer o : listObserver) {
			o.update(s);
		}
	}
}
