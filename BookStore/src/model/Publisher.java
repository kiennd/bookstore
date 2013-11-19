package model;

import java.io.Serializable;

public class Publisher implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5914952718164347907L;
	
	int id;
	String name,address,description;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Publisher() {
		super();
	}
	public Publisher(int id, String name, String address, String description) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.description = description;
	}
	
	public Publisher(String name, String address, String description) {
		super();
		this.name = name;
		this.address = address;
		this.description = description;
	}
}
