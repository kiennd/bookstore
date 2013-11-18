package control.frontend;

import java.util.Map;

import model.User;

import org.apache.struts2.interceptor.SessionAware;

import DAO.UserDAO;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 8810777968530406883L;
	private User userBean;
	private Map<String, Object> session;

	public String execute() throws Exception {
		UserDAO ud = new UserDAO();
		if(userBean == null){
			return "input";
		}
		int id = ud.checkUserLogin(userBean);
		if (id!=-1) {
			User tmp = ud.getUser(id);
			userBean.setId(id);
			userBean.setUsername(tmp.getUsername());
			userBean.setPhonenumber(tmp.getPhonenumber());
			userBean.setFullname(tmp.getFullname());
			System.out.println("FULL NAME: "+userBean.getFullname());
			session.put("user", userBean);
			return "success";
		} else {
			addActionError(getText("error.login"));
			return "input";
		}
	}
	
	public void validate() {
		System.out.println(userBean.getUsername());
		if (userBean.getUsername().length() == 0) {
			addActionError("Username is required.");
		}

		if (userBean.getPassword().length() == 0) {
			addActionError("Password is required.");
		}
	}

	public User getUserBean() {
		return userBean;
	}

	public void setUserBean(User userBean) {
		this.userBean = userBean;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session = arg0;
	}
}