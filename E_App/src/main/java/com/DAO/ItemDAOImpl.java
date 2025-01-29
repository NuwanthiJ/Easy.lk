package com.DAO;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Products;



public class ItemDAOImpl implements ItemDAO {
	
	private Connection conn;
	
	public ItemDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	
	//*****Add items to the System*****

	public boolean addItems(Products p) {
		
		boolean f=false;
		
		try {
			String sql="insert into products (itemName,price,itemCategory,status,photo,email,description) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, p.getItemName());
			ps.setString(2, p.getPrice());
			ps.setString(3, p.getItemCategory());
			ps.setString(4, p.getStatus());
			ps.setString(5, p.getPhotoName());
			ps.setString(6, p.getEmail());
			ps.setString(7, p.getDescription());
			
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return f;
		
	}

	
	//***** Get all added items details in the product table (Database) *****
	
	@Override
	public List<Products> getAllItems() {
		
		List<Products> list = new ArrayList<Products>();
		Products p = null;
		
		try {
			String sql = "select * from products";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				p = new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				p.setDescription(rs.getString(8));
				list.add(p);
				
				
			}
		} catch ( Exception e ) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	//***** Display all added items in the system *****
	
	public Products getItemById(int id) {
		
		Products p = null;
		
		try {
			
			String sql = "select * from products where itemID=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				p.setDescription(rs.getString(8));
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
		return p;
		
		
		
		
	}

	
	//***** Update item details *****
	
	@Override
	public boolean updateEditItems(Products p) {
		boolean f = false;
		
		try {
			
			String sql="Update products set itemName=?,price=?,status=? where itemID=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, p.getItemName());
			ps.setString(2, p.getPrice());			
			ps.setString(3, p.getStatus());
			ps.setInt(4, p.getItemID());
			
			int i= ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
						
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	//***** Delete added item in the system *****
	
	public boolean deleteItems(int id) {
		boolean f = false;
		
		try {
			
			String sql = ("delete from products where itemID=?");
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, id);
			int i = ps.executeUpdate();
			
			if(i==1)
			{
				f=true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	
	//***** Display 6 added electronic Accessories on home page*****
	
	public List<Products> getElectronicAccessories() {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Electronics");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			int i = 1;
			while(rs.next() && i<=6) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				i++;
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	//***** Display 6 added HomeLifestyle Accessories on home page*****
	
    public List<Products> getHomeLifestyle() {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Home & Lifestyles");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			int i = 1;
			while(rs.next() && i<=6) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				i++;
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
    
    //***** Display 6 added Gift Item on home page*****
    
	public List<Products> getGiftItems() {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Gift");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			int i = 1;
			while(rs.next() && i<=6) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				i++;
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	//***** Display all added electronic accessories on Electronic Accessories page*****
	
    public  List<Products> getAllElectronics() {
    	
    	List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Electronics");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
    	return list;
    }
	
    
    //***** Display all added HomeLifestyle Accessories on HomeLifestyle page*****
    
	public  List<Products> getAllHomeLifestyles(){
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Home & Lifestyles");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	//***** Display all added gift item on Gift Items page*****
	
	public  List<Products> getAllGift(){
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemCategory=? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, "Gift");
			ps.setString(2, "Active");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setPhotoName(rs.getString(6));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setEmail(rs.getString(7));
				list.add(p);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
	
	//***** Search Any item*****
	
	@Override
	public List<Products> getItemBySearch(String ch) {
		
		List<Products> list = new ArrayList<Products>();
		Products p=null;
		
		try {
			String sql ="select * from products where itemName like? or itemCategory like? and status=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, "%"+ch+"%");
			ps.setString(2, "%"+ch+"%");
			ps.setString(3, "Active");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				p=new Products();
				p.setItemID(rs.getInt(1));
				p.setItemName(rs.getString(2));
				p.setPrice(rs.getString(3));
				p.setItemCategory(rs.getString(4));
				p.setStatus(rs.getString(5));
				p.setPhotoName(rs.getString(6));
				p.setEmail(rs.getString(7));
				list.add(p);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	

}
