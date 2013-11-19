package model;

import java.io.Serializable;
import java.sql.Date;

public class Author implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4543445314071174720L;
	int id;
	String name, description, imageLink;
	Date dateOfBirth;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	
	
	public String getImageLink() {
		return imageLink;
	}

	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public Author(int id, String name, String description, Date dateOfBirth) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.dateOfBirth = dateOfBirth;
	}

	public Author() {
		super();
	}
	
	public Author(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}

	public Author(int id, String name, String description, String imageLink,
			Date dateOfBirth) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.imageLink = imageLink;
		this.dateOfBirth = dateOfBirth;
	}
	
	

}
