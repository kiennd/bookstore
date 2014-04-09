package control.frontend;

import java.util.Map;
import java.util.Vector;

import model.Book;
import model.Cart;
import model.RecommendBooks;
import model.User;

import org.apache.struts2.interceptor.SessionAware;

import DAO.UserDAO;

import com.opensymphony.xwork2.ActionSupport;

import control.backend.BookAction;
import control.observer.Observer;

public class LoginAction extends ActionSupport implements SessionAware,
		Observer {
	/**
	 * 
	 */
	private static final long serialVersionUID = 8810777968530406883L;
	private User userBean;
	private Map<String, Object> session;

	public String execute() throws Exception {
		UserDAO ud = new UserDAO();

		// register observer
		BookAction.registerObserver(this);
		System.out.println("Observer list size: "
				+ BookAction.listObserver.size());

		if (userBean == null) {
			return "input";
		}
		int id = ud.checkUserLogin(userBean);
		if (id != -1) {
			User tmp = ud.getUser(id);
			userBean.setId(id);
			userBean.setUsername(tmp.getUsername());
			userBean.setPhonenumber(tmp.getPhonenumber());
			userBean.setFullname(tmp.getFullname());
			System.out.println("FULL NAME: " + userBean.getFullname());
			session.put("user", userBean);

			return "success";
		} else {
			addActionError(getText("error.login"));

		}

		return "input";
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

	// update when notification coming
	@Override
	public void update(String s) {
		// TODO Auto-generated method stub
		System.out.println("update");
		String s1 = checkCart();
		if (s != "") {
			session.put("notify", s);
		} else {
			session.put("notify", s1);
		}
	}

	public String checkCart() {
		System.out.println("Check cart");
		StringBuffer strBuff = new StringBuffer("Update new price: ");
		Vector<Cart> cartlist = new Vector<>();
		cartlist = (Vector<Cart>) session.get("cartlist");
		if (cartlist != null && cartlist.size() > 0) {
			for (Book b : RecommendBooks.shareInstance().getListBook()) {
				for (Cart c : cartlist) {
					if (b.getId() == c.getBook().getId()) {
						c.setBook(b);
						strBuff.append("\\n + " + b.getTitle() + " has price: "
								+ b.getPrice());
					}
				}
			}
		}
		session.put("cartlist", cartlist);
		return strBuff.toString();
	}
}