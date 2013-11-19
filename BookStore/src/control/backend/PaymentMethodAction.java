package control.backend;

import java.util.Vector;

import model.PaymentMethod;
import DAO.PaymentMethodDAO;

import com.opensymphony.xwork2.ActionSupport;

public class PaymentMethodAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4813589085213848966L;
	private static final int ITEM_PER_PAGE = 20;
	private Vector<PaymentMethod> paymentMethods;
	private PaymentMethod paymentMethodBean;
	private String name = "";
	private int id;
	private int page, totalPage, startIndex, endIndex;
	private Vector<String> selection = new Vector<String>();

	public String indexAction() {
		paymentMethods = new Vector<>();
		PaymentMethodDAO cd = new PaymentMethodDAO();
		paymentMethods = cd.find(name);

		if(this.paymentMethods.size()==0){
			endIndex = -1;
			return SUCCESS;
		}
		
		totalPage = paymentMethods.size() / ITEM_PER_PAGE;
		if (totalPage * ITEM_PER_PAGE < paymentMethods.size()) {
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
			endIndex = paymentMethods.size() - 1;
		}

		return SUCCESS;
	}

	public String newAction() {
		if (paymentMethodBean == null) {
			return ERROR;
		}
		PaymentMethodDAO cd = new PaymentMethodDAO();
		if (cd.newPaymentMethod(paymentMethodBean)) {
			addActionMessage("New item was created successfully!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String editAction() {
		PaymentMethodDAO cd = new PaymentMethodDAO();
		paymentMethodBean = cd.getPaymentMethod(id);
		if (paymentMethodBean != null)
			return SUCCESS;
		return ERROR;
	}

	public String saveAction() {
		PaymentMethodDAO cd = new PaymentMethodDAO();
		if (cd.savePaymentMethod(paymentMethodBean)) {
			addActionMessage("Item #" + paymentMethodBean.getId()
					+ " was updated!");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String deleteAction() {
		PaymentMethodDAO cd = new PaymentMethodDAO();

		if (id != 0) {
			if (cd.deletePaymentMethod(id)) {
				addActionMessage("Item #" + id + " was deleted !");
				return SUCCESS;
			} else
				return ERROR;
		} else {
			for (String s : selection) {
				if (cd.deletePaymentMethod(Integer.parseInt(s)))
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

	public Vector<PaymentMethod> getPaymentMethods() {
		return paymentMethods;
	}

	public void setPaymentMethods(Vector<PaymentMethod> paymentMethods) {
		this.paymentMethods = paymentMethods;
	}

	public PaymentMethod getPaymentMethodBean() {
		return paymentMethodBean;
	}

	public void setPaymentMethodBean(PaymentMethod paymentMethodBean) {
		this.paymentMethodBean = paymentMethodBean;
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
