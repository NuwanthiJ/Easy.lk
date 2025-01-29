package com.entity;

public class Item_Order {

	private int id;
	private String orderId;
	private String userName;
	private String email;
	private String phone;
	private String fulladd;
	private String itemName;
	private String price;
	private String paymentType;


	public Item_Order() {
		super();
		
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFulladd() {
		return fulladd;
	}
	public void setFulladd(String fulladd) {
		this.fulladd = fulladd;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	@Override
	public String toString() {
		return "Item_Order [id=" + id +", orderId"+ orderId+ ", userName=" + userName +", email=" + email+ ", phone=" + phone + ", fulladd=" + fulladd
				+", itemName="+itemName+ ", price="+price+ ", paymentType=" + paymentType + "]";
	}


	
}
