package control.backend;

import java.util.Vector;

import model.Category;
import DAO.CategoryDAO;

import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8456422172954554556L;
	private static final int ITEM_PER_PAGE = 20;
	private Vector<Category> categorys;
	private Category categoryBean;
	private String name = "";
	private int id;
	private int page, totalPage, startIndex, endIndex;
	private Vector<String> selection = new Vector<String>();

	public String indexAction() {
		categorys = new Vector<>();
		CategoryDAO cd = new CategoryDAO();
		categorys = cd.find(name);
		
		if(this.categorys.size()==0){
			endIndex = -1;
			return SUCCESS;
		}
		
		totalPage = categorys.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < categorys.size()) {
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
			endIndex = categorys.size() - 1;
		}

		return SUCCESS;
	}

	public String newAction() {
		if (categoryBean == null) {
			return ERROR;
		}
		CategoryDAO cd = new CategoryDAO();
		if (cd.newCategory(categoryBean)) {
			addActionMessage("New item was created successfully!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String editAction() {
		CategoryDAO cd = new CategoryDAO();
		categoryBean = cd.getCategory(id);
		if (categoryBean != null)
			return SUCCESS;
		return ERROR;
	}

	public String saveAction() {
		CategoryDAO cd = new CategoryDAO();
		if (cd.saveCategory(categoryBean)) {
			addActionMessage("Item #" + categoryBean.getId()
					+ " was updated!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String deleteAction() {
		CategoryDAO cd = new CategoryDAO();

		if (id != 0) {
			if (cd.delete(id)) {
				addActionMessage("Item #" + id + " was deleted !");
				return SUCCESS;
			} else
				return ERROR;
		} else {
			for (String s : selection) {
				if (cd.delete(Integer.parseInt(s)))
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

	public Vector<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(Vector<Category> categorys) {
		this.categorys = categorys;
	}

	public Category getCategoryBean() {
		return categoryBean;
	}

	public void setCategoryBean(Category categoryBean) {
		this.categoryBean = categoryBean;
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
