package com.DAO;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.Cart;
import com.entity.Products;

public class CartDAOImpl implements CartDAO{

	private Connection conn;
	
	public CartDAOImpl(Connection conn)
	{
		this.conn=conn;
	}
	
	
	
	public boolean addCart(Cart c) {
		boolean f= false;
		
		try {
			
			String sql="insert into cart(pid,uid,itemName,price,total_price) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, c.getPid());
			ps.setInt(2, c.getUserId());
			ps.setString(3, c.getItemName());
			ps.setDouble(4, c.getPrice());
			ps.setDouble(5, c.getTotal_price());
			
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



	
	public List<Cart> getItemByUser(int userId) {
		
		List<Cart> list = new ArrayList<Cart>();

		Cart c = null;
		double total_price = 0;

		try {

			String sql = "select * from cart where uid=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				c = new Cart();
				c.setCid(rs.getInt(1));
				c.setPid(rs.getInt(2));
				c.setUserId(rs.getInt(3));
				c.setItemName(rs.getString(4));
				c.setPrice(rs.getDouble(5));

				total_price = total_price + rs.getDouble(6);
				c.setTotal_price(total_price);

				list.add(c);
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return list;
	}

	
	public boolean deleteItem(int pid,int uid,int cid) {

		boolean f = false;

		try {

			String sql = "delete from cart where pid=? and uid=? and cid=?";

			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, pid);
			ps.setInt(2, uid);
			ps.setInt(3, cid);

			int i=ps.executeUpdate();
			
			if(i==1) {
				
				f=true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return f;
	}
	
}
