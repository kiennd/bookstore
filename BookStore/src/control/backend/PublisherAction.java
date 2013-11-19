package control.backend;

import java.util.List;

import model.Publisher;
import DAO.PublisherDAO;

import com.opensymphony.xwork2.ActionSupport;

public class PublisherAction extends ActionSupport{


	/**
	 * 
	 */
	private static final long serialVersionUID = -3418942528362080264L;
	private Publisher publisherBean;
	private List<Publisher> listPublisher;
	private int begin, end;

	@Override
	public String execute() throws Exception {
		PublisherDAO pd = new PublisherDAO();
		this.listPublisher = pd.returnNumberOfResult();
		begin = 0;
		end = listPublisher.size()-1;
		System.out.println("END: "+end);
		return SUCCESS;
	}
	
	public String addPublisher() throws Exception {

		PublisherDAO pd = new PublisherDAO();
		if(pd.addPublisher(publisherBean)) {
			return "success";
		}else{
			addActionError(getText("error.addPublisher"));
			return "input";
		}
	}
	
	@Override
	public void validate() {
		if(publisherBean.getName().length() == 0){
			addFieldError("publisherBean.name","Publisher's name is required");
		}
		if(publisherBean.getAddress().length() == 0){
			addFieldError("publisherBean.address","Publisher's address is required");
		}
		
		if(publisherBean.getDescription().length() == 0){
			addFieldError("publisherBean.description","Publisher's description is required");
		}
	}

	public Publisher getPublisherBean() {
		return publisherBean;
	}

	public void setPublisherBean(Publisher publisherBean) {
		this.publisherBean = publisherBean;
	}

	
	
	public List<Publisher> getListPublisher() {
		return listPublisher;
	}

	public void setListPublisher(List<Publisher> listPublisher) {
		this.listPublisher = listPublisher;
	}

	public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	
}
