package control.backend;

import java.io.File;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import model.Author;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import DAO.AuthorDAO;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class AuthorAction extends ActionSupport implements Preparable,
		ServletRequestAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3587795455531824627L;
	private Author authorBean;

	private String day;
	private String month;
	private String year;

	private HttpServletRequest servletRequest;
	private File fileUpload;
	private String fileUploadContentType;
	private String fileUploadFileName;

	@SuppressWarnings("deprecation")
	@Override
	public String execute() throws Exception {
		AuthorDAO ad = new AuthorDAO();

		try {
			int d = Integer.parseInt(day);
			int m = Integer.parseInt(month);
			int y = Integer.parseInt(year);
			if (d < 0 || m < 0 || y < 0 || d > 31 || m > 12) {
				addActionError("Date of birth input error");
				return "input";
			}

			Date date = new Date(y, m, d);
			authorBean.setDateOfBirth(date);
			if (fileUpload != null) {
				String filePath = this.servletRequest
						.getRealPath("images\\authors\\");
				File destFile = new File(filePath, fileUploadFileName);
				FileUtils.copyFile(fileUpload, destFile);
				
				authorBean.setImageLink(this.fileUploadFileName);
			}
		} catch (Exception ex) {
			addActionError(ex.toString());
			return "input";
		}

		if (ad.addAuthor(authorBean)) {
			return "success";
		} else {
			addActionError(getText("error.addAuthor"));
			return "input";
		}
	}

	public String edit() throws Exception {
		AuthorDAO ad = new AuthorDAO();

		try {
			int d = Integer.parseInt(day);
			int m = Integer.parseInt(month);
			int y = Integer.parseInt(year);
			if (d < 0 || m < 0 || y < 0 || d > 31 || m > 12) {
				addActionError("Date of birth input error");
				return "input";
			}

			Date date = new Date(y, m, d);
			authorBean.setDateOfBirth(date);

			if (fileUpload != null) {
				String filePath = this.servletRequest
						.getRealPath("images\\authors\\");
				File destFile = new File(filePath, fileUploadFileName);
				FileUtils.copyFile(fileUpload, destFile);
				authorBean.setImageLink(this.fileUploadFileName);
			}
		} catch (Exception ex) {
			addActionError(ex.toString());
			return "input";
		}

		if (ad.updateAuthor(authorBean.getId(), authorBean)) {
			return "success";
		} else {
			addActionError(getText("error.addAuthor"));
			return "input";
		}
	}

	@Override
	public void validate() {
		if (authorBean.getName().length() == 0) {
			addFieldError("authorBean.name", "Publisher's name is required");
		}

		if (authorBean.getDescription().length() == 0) {
			addFieldError("authorBean.description",
					"Publisher's description is required");
		}
	}

	public Author getAuthorBean() {
		return authorBean;
	}

	public void setAuthorBean(Author authorBean) {
		this.authorBean = authorBean;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getFileUploadContentType() {
		return fileUploadContentType;
	}

	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}

	public String getFileUploadFileName() {
		return fileUploadFileName;
	}

	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}

	public File getFileUpload() {
		return fileUpload;
	}

	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}

	@Override
	public void prepare() throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		// TODO Auto-generated method stub
		this.servletRequest = servletRequest;
	}

	public HttpServletRequest getServletRequest() {
		return this.servletRequest;
	}
}
