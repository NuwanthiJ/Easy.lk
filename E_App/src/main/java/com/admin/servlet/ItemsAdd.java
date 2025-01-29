package com.admin.servlet;

import java.io.File;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.Products;


@WebServlet("/add_Items")
@MultipartConfig
public class ItemsAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				   String itemName= req.getParameter("iname");
				   String price = req.getParameter("price");
				   String categories= req.getParameter("categories");
				   String status= req.getParameter("status");
				   Part part=req.getPart("image");
				   String fileName=part.getSubmittedFileName();
				   String description=req.getParameter("description");
				   
				   
				   Products p =  new Products(itemName,price,categories,status,fileName,"admin",description);
				   
				   
				   ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn());
				   
				   
				   
				   
				   boolean f=dao.addItems(p);
				   
				   HttpSession session = req.getSession();
				   
				   if(f)
				   {
					   
					   String path =  System.getProperty("user.dir")+"\\GroupProject\\E_App\\src\\main\\webapp\\Products";
					   System.out.println(path);
					   
					   File file= new File(path);
					   
					   part.write(path+File.separator + fileName);
					   
					   
					   session.setAttribute("succMsg","Item Add Successfully..!");
					   resp.sendRedirect("admin/add_Items.jsp");
					   
					   
				   }else {
					   
					   session.setAttribute("failedMsg","Smething Wrong on Server");
					   resp.sendRedirect("admin/add_Items.jsp");
					   
				   }
				   
				   
				
			} catch (Exception e) {
				e.printStackTrace();
				
				
			}
		
	}
	
	
	

}
