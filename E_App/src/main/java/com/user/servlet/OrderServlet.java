package com.user.servlet;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.CartDAOImpl;
import com.DAO.ItemOrderImpl;
import com.DB.DBConnect;
import com.entity.Cart;
import com.entity.Item_Order;


@WebServlet("/order")
public class OrderServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			HttpSession session=req.getSession();
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			String name=req.getParameter("username");
			String email=req.getParameter("email");
			String phone=req.getParameter("phone");
			String address=req.getParameter("address");
			String landmark=req.getParameter("landmark");
			String city=req.getParameter("city");
			String state=req.getParameter("state");
			String pincode=req.getParameter("pincode");
			String paymentType=req.getParameter("payment");
			
			String fullAdd=address+","+landmark+","+city+","+state+","+pincode;
			
			
			
			CartDAOImpl dao= new CartDAOImpl(DBConnect.getConn());
			List<Cart> plist=dao.getItemByUser(id);
			
			
			if(plist.isEmpty()) {
				session.setAttribute("failedMsg","Add Item");
				resp.sendRedirect("checkout.jsp");
			}else {
				
				ItemOrderImpl dao2=new ItemOrderImpl(DBConnect.getConn());
				Item_Order o=null;
				

				ArrayList<Item_Order> orderList=new ArrayList<Item_Order>();
				Random r=new Random();
				for(Cart c:plist)
				{
					o =new Item_Order();
					
					o.setOrderId("ITEM-ORD-00"+r.nextInt(1000));
					o.setUserName(name);
					o.setEmail(email);
					o.setPhone(phone);
					o.setFulladd(fullAdd);
					o.setItemName(c.getItemName());
					o.setPrice(c.getPrice()+"");
					o.setPaymentType(paymentType);
					
					orderList.add(o);
					
				}
				
				if("noselect".equals(paymentType))
				{
					session.setAttribute("failedMsg","Choose Payment Method");
					resp.sendRedirect("checkout.jsp");
				}else {
					
					boolean f = dao2.saveOrder(orderList);
					if(f) {
						resp.sendRedirect("order_success.jsp");
					}else {
						session.setAttribute("failedMsg","Your Order Failed");
						resp.sendRedirect("checkout.jsp");
					}
					
				}
				
				
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
}
