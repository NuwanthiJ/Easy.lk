<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>	
<%@ page import="com.entity.User" %>
<%@ page import="java.util.List" %>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.ItemOrderImpl" %>
<%@ page import="com.entity.Item_Order"%>    
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Admin: All Items</title>
<%@ include file="allCss.jsp"%>
</head>



<body style="background-color: #f0f2f2;">

	<c:if test="${empty userobj }">
      <c:redirect url="../login.jsp"></c:redirect>
    </c:if>

	<%@ include file="adminNavbar.jsp"%>
		<h3 class="text-center mt-4"> Hello , Admin</h3>
		
			<table class="table table-striped">
			
				  <thead class="bg-primary text-white">
					    <tr>
						      <th scope="col">Order ID</th>
						      <th scope="col">Name</th>
						      <th scope="col">Email</th>
						      <th scope="col">Address</th>
						      <th scope="col">Phone No</th>
						      <th scope="col">Item Name</th>
						      <th scope="col">Price</th>
						      <th scope="col">Payment Type</th>
						      
					    </tr>
				  </thead>
				  
				  <tbody>
				  
					    <%
				  
				  ItemOrderImpl dao=new ItemOrderImpl(DBConnect.getConn());
				  List<Item_Order> plist=dao.getAllOrder();
				  for(Item_Order p:plist)
				  {%>
					  
					  <tr>
						      <th scope="row"><%=p.getOrderId() %></th>
						      <td><%=p.getUserName() %></td>
						      <td><%=p.getEmail() %></td>
						      <td><%=p.getFulladd() %></td>
						      <td><%=p.getPhone() %></td>
						      <td><%=p.getItemName() %></td>
						      <td><%=p.getPrice() %></td>
						      <td><%=p.getPaymentType() %></td>
 
					    </tr>
					  
				  <%}
				  
				  %>
					    
				</tbody>
			</table>

<div style ="margin-top:15%;">	
  <%@include file="footer.jsp"%>
  </div>

</body>


</html>