package control.frontend;

import java.util.Map;
import java.util.Vector;

import org.apache.struts2.interceptor.SessionAware;

import model.Cart;
import model.Order;
import model.PaymentMethod;
import model.Reservation;
import model.User;
import DAO.OrderDAO;
import DAO.PaymentMethodDAO;
import DAO.ReservationDAO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckoutAction extends ActionSupport implements SessionAware{
	private User user;
	private Vector<PaymentMethod> pmlist;
	private String cardname;
	private long creditcardnum;
	private int pmid;
	                    
	private Map<String,	Object> session = ActionContext.getContext().getSession();
	
	public String checkout() {
		user = (User) session.get("user");
		PaymentMethodDAO pmDao = new PaymentMethodDAO();
		pmlist = pmDao.find("");
		return SUCCESS;
	}   

	public String savecheckout() {
		Vector<Cart> cartlist = new Vector<>();
		cartlist = (Vector<Cart>) session.get("cartlist");
		this.user = (User)session.get("user");
		PaymentMethodDAO pmDao = new PaymentMethodDAO();
		PaymentMethod pm = pmDao.getPaymentMethod(pmid);
		for (Cart c:cartlist) {
			Order order = new Order();
			order.setBook(c.getBook());
			order.setCardnumber(creditcardnum);
			order.setNameoncard(cardname);
			order.setPaymentMethod(pm);
			order.setQuantity(c.getQuantity());
			order.setUser(user);
			order.setPrice((int)session.get("totalPrice"));
			OrderDAO orderDao = new OrderDAO();
			orderDao.saveNewOrder(order);
		}
		return SUCCESS;
		
	}
	

	public int getPmid() {
		return pmid;
	}

	public void setPmid(int pmid) {
		this.pmid = pmid;
	}

	public String getCardname() {
		return cardname;
	}



	public void setCardname(String cardname) {
		this.cardname = cardname;
	}






	public long getCreditcardnum() {
		return creditcardnum;
	}

	public void setCreditcardnum(long creditcardnum) {
		this.creditcardnum = creditcardnum;
	}

	public void setCreditcardnum(int creditcardnum) {
		this.creditcardnum = creditcardnum;
	}



	public User getUser() {
		return user;
	}



	public void setUser(User user) {
		this.user = user;
	}



	public Vector<PaymentMethod> getPmlist() {
		return pmlist;
	}



	public void setPmlist(Vector<PaymentMethod> pmlist) {
		this.pmlist = pmlist;
	}



	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}
	
}
