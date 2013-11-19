package control.backend;

import java.util.Vector;

import model.Role;
import DAO.RoleDAO;

import com.opensymphony.xwork2.ActionSupport;

public class RoleAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8456422172954554556L;
	private int page, totalPage, startIndex, endIndex;
	private static final int ITEM_PER_PAGE = 20;
	private Vector<Role> roles;
	private Role roleBean;
	private String name = "";
	private int id;
	private Vector<String> selection = new Vector<String>();

	public String indexAction() {
		roles = new Vector<>();
		RoleDAO cd = new RoleDAO();
		roles = cd.findRole(name);
		if (this.roles.size() == 0) {
			endIndex = -1;
			return SUCCESS;
		}
		totalPage = roles.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < roles.size()) {
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
			endIndex = roles.size() - 1;
		}

		return SUCCESS;
	}

	public String newAction() {
		if (roleBean == null) {
			return ERROR;
		}
		RoleDAO cd = new RoleDAO();
		if (cd.newRole(roleBean)) {
			addActionMessage("New item was created successfully!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String editAction() {
		RoleDAO cd = new RoleDAO();
		roleBean = cd.getRole(id);
		if (roleBean != null)
			return SUCCESS;
		return ERROR;
	}

	public String saveAction() {
		RoleDAO cd = new RoleDAO();
		if (cd.saveRole(roleBean)) {
			addActionMessage("Item #" + roleBean.getId() + " was updated!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String deleteAction() {
		RoleDAO cd = new RoleDAO();

		if (id != 0) {
			if (cd.deleteRole(id)) {
				addActionMessage("Item #" + id + " was deleted !");
				return SUCCESS;
			} else
				return ERROR;
		} else {
			for (String s : selection) {
				if (cd.deleteRole(Integer.parseInt(s)))
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

	public Vector<Role> getRoles() {
		return roles;
	}

	public void setRoles(Vector<Role> roles) {
		this.roles = roles;
	}

	public Role getRoleBean() {
		return roleBean;
	}

	public void setRoleBean(Role roleBean) {
		this.roleBean = roleBean;
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

	public Vector<String> getSelection() {
		return selection;
	}

	public void setSelection(Vector<String> selection) {
		this.selection = selection;
	}

}
