package control.backend;

import java.util.Vector;

import model.Store;
import DAO.StoreDAO;

import com.opensymphony.xwork2.ActionSupport;

public class StoreAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8456422172954554556L;
	private static final int ITEM_PER_PAGE = 20;
	private Vector<Store> stores;
	private Store storeBean;
	private String name = "";
	private int id;
	private int page, totalPage, startIndex, endIndex;
	private Vector<String> selection = new Vector<String>();

	public String indexAction() {
		stores = new Vector<>();
		StoreDAO cd = new StoreDAO();
		stores = cd.findStore(name);
		if(this.stores.size()==0){
			endIndex = -1;
			return SUCCESS;
		}
		totalPage = stores.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < stores.size()) {
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
			endIndex = stores.size() - 1;
		}

		return SUCCESS;
	}

	public String newAction() {
		if (storeBean == null) {
			return ERROR;
		}
		StoreDAO cd = new StoreDAO();
		if (cd.newStore(storeBean)) {
			addActionMessage("New item was created successfully!");
			return SUCCESS;
		} else {
			addActionError("Book ID is not exist in book table or book id was existed in store table!");
			return ERROR;
		}
	}

	public String editAction() {
		StoreDAO cd = new StoreDAO();
		storeBean = cd.getStore(id);
		if (storeBean != null)
			return SUCCESS;
		return ERROR;
	}

	public String saveAction() {
		StoreDAO cd = new StoreDAO();
		if (cd.saveStore(storeBean)) {
			addActionMessage("Item #" + storeBean.getBookID()
					+ " was updated!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String deleteAction() {
		StoreDAO cd = new StoreDAO();

		if (id != 0) {
			if (cd.deleteStore(id)) {
				addActionMessage("Item #" + id + " was deleted !");
				return SUCCESS;
			} else
				return ERROR;
		} else {
			for (String s : selection) {
				if (cd.deleteStore(Integer.parseInt(s)))
					addActionMessage("Item #" + s + " was deleted !");
				else
					return ERROR;
			}
			return SUCCESS;
		}

	}

	public void setSlelect(String[] select) {
		for (int i = 0; i < select.length; i++) {
			selection.add(select[i]);
		}
	}

	public Vector<Store> getStores() {
		return stores;
	}

	public void setStores(Vector<Store> Stores) {
		this.stores = Stores;
	}

	public Store getStoreBean() {
		return storeBean;
	}

	public void setStoreBean(Store StoreBean) {
		this.storeBean = StoreBean;
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

}
