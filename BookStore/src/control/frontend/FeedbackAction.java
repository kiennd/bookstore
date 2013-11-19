package control.frontend;

import model.Feedback;
import DAO.FeedbackDAO;

import com.opensymphony.xwork2.ActionSupport;

public class FeedbackAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4257078747561427698L;
	/**
	 * 
	 */
	private Feedback feedBean;

	public String newFeedBack() throws Exception {

		if (feedBean.getEmail().length() == 0) {
			addActionError("Email field have to be filled");
			return ERROR;
		}

		if (feedBean.getSubject().length() == 0) {
			addActionError("Email field have to be filled");
			return ERROR;
		}

		FeedbackDAO fd = new FeedbackDAO();
		if (fd.newFeedback(feedBean)) {
			addActionMessage("Sent feedback successfully!");
			return SUCCESS;
		} 
			addActionError("Sent feedback error");
			return ERROR;
	}

	public Feedback getFeedBean() {
		return feedBean;
	}

	public void setFeedBean(Feedback feedBean) {
		this.feedBean = feedBean;
	}

}
