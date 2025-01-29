package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Products;


@WebServlet("/checkout")
public class CartServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			try {
				
				   int pid=Integer.parseInt(req.getParameter("pid"));
				   int uid=Integer.parseInt(req.getParameter("uid"));
				   
				   ItemDAOImpl dao= new ItemDAOImpl(DBConnect.getConn());
				   Products p=dao.getItemById(pid);
				   
				   Cart c=new Cart();
				   c.setPid(pid);
				   c.setUserId(uid);
				   c.setItemName(p.getItemName());
				   c.setPrice(Double.parseDouble(p.getPrice()));
				   c.setTotal_price(Double.parseDouble(p.getPrice()));
				   
				   
				   CartDAOImpl dao2=new CartDAOImpl(DBConnect.getConn());
				   boolean f=dao2.addCart(c);
				   
				   HttpSession session=req.getSession();
				   
				   if(f)
				   {
					   session.setAttribute("addCart", "Item Added to cart");
			           resp.sendRedirect("checkout.jsp");
			        	
				   }else {
					   session.setAttribute("failed", "Something wrong on server");
			           resp.sendRedirect("checkout.jsp");
			           
				   }
				   
				   
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	
}
