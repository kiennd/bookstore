package model;

import java.io.Serializable;

public class PaymentMethod implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3833953695404370639L;
	private int id;
	private String methodDescription;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public PaymentMethod() {
	}
	public String getMethodDescription() {
		return methodDescription;
	}
	public void setMethodDescription(String methodDescription) {
		this.methodDescription = methodDescription;
	}
	public PaymentMethod(int id, String methodDescription) {
		super();
		this.id = id;
		this.methodDescription = methodDescription;
	}
}
