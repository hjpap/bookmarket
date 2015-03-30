package com.wei.model;

public class OrderBean {

	private String order_id;
	private String order_date;
	private String user_id;
	private String Status; 
	private String address;
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String orderId) {
		order_id = orderId;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String orderDate) {
		order_date = orderDate;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String userId) {
		user_id = userId;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
