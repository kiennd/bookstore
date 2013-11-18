package control.frontend;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import model.Role;
import model.User;
import DAO.RoleDAO;
import DAO.UserDAO;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements SessionAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7056147144759413672L;
	/**
	 * 
	 */
	private String name = "";
	private int id;
	private User userBean;
	private String confirmPassword;
	private Map<String, Object> session;

	public UserAction() {
	}

	public String edit() throws Exception {
		UserDAO ud = new UserDAO();
		this.userBean = ud.getUser(id);
		RoleDAO rd = new RoleDAO();
		return SUCCESS;
	}

	public String saveUser() throws Exception {
		UserDAO ud = new UserDAO();
		if (ud.saveUser(userBean))
			return SUCCESS;
		else
			return ERROR;
	}

	public String newUserFrontEnd() throws Exception {
		RoleDAO roleDAO = new RoleDAO();
		Role userRole = (roleDAO.findRole("member")).firstElement();
		userBean.setRole(userRole);

		System.out.println("Username: " + userBean.getUsername());

		if (userBean.getUsername().length() == 0) {
			addActionError("You have to fill username field");
		}

		if (userBean.getPassword().length() < 6) {
			addActionError("Password have to contain at least 6 character");
		}

		if (confirmPassword.equals(userBean.getPassword())) {
			UserDAO ud = new UserDAO();
			if (!ud.checkUserExist(userBean.getUsername())) {
				if (ud.newUser(userBean)) {
					addActionMessage("One item has been created successfully.");
					return SUCCESS;
				} else {
					addActionError("This username has already been taken or role id is invalid.");
					return ERROR;
				}
			} else {
				addActionError("User existed");
			}
		} else {
			addActionError("Password not match");
		}
		return ERROR;
	}

	public String editUserFrontEnd() throws Exception {
		RoleDAO roleDAO = new RoleDAO();
		Role userRole = (roleDAO.findRole("member")).firstElement();
		userBean.setRole(userRole);

		System.out.println("fullname: " + userBean.getFullname());
		System.out.println("tele: " + userBean.getPhonenumber());
		System.out.println("id: " + userBean.getId());
		UserDAO ud = new UserDAO();
		if (ud.saveUserFront(userBean)){
			session.put("user", userBean);
			return SUCCESS;
		}else
			return ERROR;
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

	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
}
