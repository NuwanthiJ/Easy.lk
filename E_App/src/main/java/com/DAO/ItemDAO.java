package com.DAO;

import java.util.List;



import com.entity.Products;



public interface ItemDAO {
	
	public boolean addItems(Products p);
	
	public List<Products> getAllItems();
	
	public Products  getItemById(int id);
	
	public boolean updateEditItems(Products p);
	
	public boolean deleteItems(int id);
	
	public List<Products> getHomeLifestyle();
	
	public List<Products> getElectronicAccessories();
	
	public List<Products> getGiftItems();
	
	public  List<Products> getAllElectronics();
	
	public  List<Products> getAllHomeLifestyles();
	
	public  List<Products> getAllGift();
	
	public List<Products> getItemBySearch(String ch);
 
}
