package com.DAO;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Item_Order;


public class ItemOrderImpl implements ItemOrderDAO {

	private Connection conn;

	public ItemOrderImpl(Connection conn) {
		super();
		this.conn = conn;
	}
	

	public boolean saveOrder(List<Item_Order> plist) {
		boolean f=false;
		try {
			
			String sql="insert into eshopping.order(order_id, user_name, email, address, phone, item_name, price, payment) values(?,?,?,?,?,?,?,?)";
			
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement(sql);
			
			for(Item_Order p:plist)
			{
				
				ps.setString(1,p.getOrderId());
				ps.setString(2,p.getUserName());
				ps.setString(3,p.getEmail());
				ps.setString(4,p.getFulladd());
				ps.setString(5,p.getPhone());
				ps.setString(6,p.getItemName());
				ps.setString(7,p.getPrice());
				ps.setString(8,p.getPaymentType());
				ps.addBatch();
				
			}
			
			
			int[] count = ps.executeBatch();
			conn.commit();
			f=true;
			conn.setAutoCommit(true);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}



	public List<Item_Order> getItem(String email) {
		
		List<Item_Order> list=new ArrayList<Item_Order>();
	    Item_Order o=null;
		
		try {
			
			String sql="select * from eshopping.order where email=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, email);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				o=new Item_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setItemName(rs.getNString(7));
				o.setPrice(rs.getString(8));
				o.setPaymentType(rs.getString(9));
				list.add(o);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}



	@Override  
	public List<Item_Order> getAllOrder() {
		
		List<Item_Order> list=new ArrayList<Item_Order>();
		Item_Order o=null;
		
		try {
			
			String sql="select*from eshopping.order";
			PreparedStatement ps=conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				o=new Item_Order();
				o.setId(rs.getInt(1));
				o.setOrderId(rs.getString(2));
				o.setUserName(rs.getString(3));
				o.setEmail(rs.getString(4));
				o.setFulladd(rs.getString(5));
				o.setPhone(rs.getString(6));
				o.setItemName(rs.getNString(7));
				o.setPrice(rs.getString(8));
				o.setPaymentType(rs.getString(9));
				list.add(o);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	
}
