package model;

import java.util.ArrayList;

public class RecommendBooks {
	private ArrayList<Book> listBook = new ArrayList<>();
	static RecommendBooks instance;
	public static RecommendBooks shareInstance() {
		if(instance==null) {
			instance = new RecommendBooks();
		}
		return instance;
	}
	public ArrayList<Book> getListBook() {
		return listBook;
	}
	public void setListBook(ArrayList<Book> listBook) {
		this.listBook = listBook;
	}
	
	public void addABook(Book b) {
		if(listBook.size()>50) {
			listBook.remove(0);
		}
		for(Book book: listBook) {
			if(book.getId()==b.getId()) {
				if(book.getPrice()!=b.getPrice()) {
					book.setPrice(b.getPrice());
					return;
				}
			}
		}
		listBook.add(b);
		System.out.println("Has a book change price");
	}
	public void emptyList() {
		listBook.clear();
	}
}
