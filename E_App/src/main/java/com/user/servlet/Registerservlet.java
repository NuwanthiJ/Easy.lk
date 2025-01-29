package com.user.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAOimpl;
import com.DB.DBConnect;
import com.entity.User;

@WebServlet("/register")
public class Registerservlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String name = req.getParameter("fname");
			String email = req.getParameter("email");
			String phone = req.getParameter("phone");
			String password = req.getParameter("password");
			String check = req.getParameter("check");

			User us = new User();

			us.setName(name);
			us.setEmail(email);
			us.setPhone(phone);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			

			if (check != null) {

				UserDAOimpl dao = new UserDAOimpl(DBConnect.getConn());
                boolean f2 = dao.checkUser(email);
				if(f2)
				{
						boolean f = dao.userRegister(us);
	
						if (f) {
							session.setAttribute("succMsg","Registration Sucessfully..!");
		                    resp.sendRedirect("register.jsp");
	
						} else {
							session.setAttribute("failedMsg","Smething Wrong on Server");
		                    resp.sendRedirect("register.jsp");
						}
					
				}else {
					session.setAttribute("failedMsg","User Already Exist Try Another Email");
                    resp.sendRedirect("register.jsp");
				}
                

		 }else {
				
			session.setAttribute("failedMsg","please agree terms and conditions");
            resp.sendRedirect("register.jsp");
                 
				System.out.println("please check again ");
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

	}

}
