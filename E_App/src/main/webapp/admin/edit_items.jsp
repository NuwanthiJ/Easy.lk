<%@ page import="com.entity.Products"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.ItemDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Admin: Update Item Details</title>
	<%@ include file="allCss.jsp"%>
</head>


<body style="background-color: #f0f2f2;">
	<%@ include file="adminNavbar.jsp"%>
	
	<div class = "container mt-5">
		<div class = "row">
			<div class = "col-md-4 offset-md-4">
				<div class = "card">
					<div class = "card-body">
						<h4 class = "text-center "> Edit Item Details</h4>
						
							 
                             
                             
                             
                             <%
                             	int id=Integer.parseInt(request.getParameter("id"));
                                ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn());
                                Products p = dao.getItemById(id);
                             
                             %>
						
						
						
						<form action = "../edit_items" method = "post">
							<input type="hidden" name="id" value="<%=p.getItemID()%>">
						
								<div class = "from-group mt-2">
										<label for="exampleTnputEmail1"> Item Name*</label>
										<input name="iname" type="text" class="form-control" 
										id="exampleTnputEmail1" aria-describedby="emailHelp" value ="<%=p.getItemName() %>">
								</div>
								
								
								
								<div class = "from-group mt-3">
										<label for="exampleTnputPassword1"> Price*</label>
										<input name="price" type="number" class="form-control" 
										id="exampleTnputPassword1" value ="<%=p.getPrice()%>">
								</div>
								
								
								
								
								<div class = "from-group mt-3">
										<label for="inputState"> Item Status</label>
										<select id="inputState" name="status" class="form-control">
											<% 
											if("Active".equals(p.getStatus())){
											%>
												<option value="Active"> Active </option>
											    <option value="Inactive"> Inactive </option>
											<% 	
											
											}else{%>
											
												<option value="Inactive"> Inactive </option>
												<option value="Active"> Active </option>
											    
											<%
											
											}%>
											
											  
										</select>
								</div>
								
								
								<button type="submit" class="btn btn-primary  mt-4"> Update </button>
								
								
						</form>
						
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div style ="margin-top:15%;">	
  <%@include file="footer.jsp"%>
  </div>
	
</body>
</html>