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
<title>Admin: All Items</title>
<%@ include file="allCss.jsp"%>
</head>



<body style="background-color: #f0f2f2;">

	<%@ include file="adminNavbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
		<h3 class="text-center mt-2"> Products List </h3>
		
		
                     <c:if test="${not empty succMsg }">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                     </c:if>
                       
                       
                     <c:if test="${not empty failedMsg }">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                     </c:if>

			<table class="table table-striped">
			
				  <thead class="bg-primary text-white">
					    <tr>
					    	  <th scope="col">ID</th>
						      <th scope="col">Image</th>
						      <th scope="col">Item Name</th>
						      <th scope="col">Price</th>
						      <th scope="col">Categories</th>
						      <th scope="col">Status</th>
						      <th scope="col">Action</th>
						      
					    </tr>
				  </thead>
				  
				  <tbody>
				  <%
				  ItemDAOImpl dao = new ItemDAOImpl(DBConnect.getConn());
				  List<Products> list = dao.getAllItems();
				  for (Products p : list) {
				  %>
				  		<tr>
							<th><%=p.getItemID() %></th>
							<td><img src="../Products/<%=p.getPhotoName()%>" style= "width: 50px; height: 50px;"></td>
							<td><%=p.getItemName() %></td>
							<td><%=p.getPrice() %></td>
							<td><%=p.getItemCategory() %></td>
							<td><%=p.getStatus() %></td>
							<td>
						      		<a href="edit_items.jsp?id=<%=p.getItemID()%>" class="btn btn-sm btn-primary "><i class="fa-solid fa-pen-to-square"></i> Edit </a>
						      		<a href="../delete?id=<%=p.getItemID() %>" class="btn btn-sm btn-danger "><i class="fa-solid fa-trash-can"></i> Delete </a>
						     </td>
						      
					   	</tr>
				  <%
				  }
				  %>
					    
				  </tbody>
			</table>
			
			<div style ="margin-top:15%;">	
				  <%@include file="footer.jsp"%>
		    </div>
			

</body>


</html>