package com.entity;

public class Products {
	
	private int itemID;
	private String itemName;
	private String price;
	private String itemCategory;
	private String status;
	private String photoName;
	private String email;
	private String description;
	
	
	
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Products(String itemName, String price, String itemCategory, String status, String photoName, String email, String description) {
		super();
		this.itemName = itemName;
		this.price = price;
		this.itemCategory = itemCategory;
		this.status = status;
		this.photoName = photoName;
		this.email = email;
		this.description = description;
	}



	public int getItemID() {
		return itemID;
	}



	public void setItemID(int itemID) {
		this.itemID = itemID;
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



	public String getItemCategory() {
		return itemCategory;
	}



	public void setItemCategory(String itemCategory) {
		this.itemCategory = itemCategory;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getPhotoName() {
		return photoName;
	}



	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDescription() {
		return description;
	}



	public void setDescription(String description) {
		this.description = description;
	}



	@Override
	public String toString() {
		return "Products [itemID=" + itemID + ", itemName=" + itemName + ", price=" + price + ", itemCategory="
				+ itemCategory + ", status=" + status + ", photoName=" + photoName + ", email=" + email + ", description=" + description + "]";
	}
	
	
	
	
	

}
