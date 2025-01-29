package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.Products;

@WebServlet("/edit_items")
public class EditItemServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			   int id=Integer.parseInt(req.getParameter("id"));
			   String itemName= req.getParameter("iname");
			   String price = req.getParameter("price");			  
			   String status= req.getParameter("status");
			   
			   
			   Products p = new Products();
			   p.setItemID(id);
			   p.setItemName(itemName);
			   p.setPrice(price);
			   p.setStatus(status);
			   
			   ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn());
			   boolean f= dao.updateEditItems(p);
			   
			   HttpSession session = req.getSession();
			   
			   if(f)
			   {
				   session.setAttribute("succMsg", "Item Update Successfully..!");
				   resp.sendRedirect("admin/all_Items.jsp");
				   
			   }else {
				   session.setAttribute("failedMsg", "Something wrong on server..!");
				   resp.sendRedirect("admin/all_Items.jsp");
				   
			   }
			   
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	

}
