<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<meta charset="ISO-8859-1">
<title>Your Order</title>
<%@include file="allcomponent/allCss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@include file="allcomponent/navbar.jsp"%>

	<div class="container mt-2 mb-5">
		<h3 class="text-center mt-2">Your Order</h3>

		<table class="table table-striped mt-5">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Item Name</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>

				</tr>
			</thead>
			<tbody>
			
			  <%
			  User u=(User)session.getAttribute("userobj");
			  ItemOrderImpl dao=new ItemOrderImpl(DBConnect.getConn());
			  List<Item_Order> plist=dao.getItem(u.getEmail());
		
			for(Item_Order p:plist)
			{%>
				<tr>
					<th scope="row"><%=p.getOrderId() %></th>
					<td><%=p.getUserName() %></td>
					<td><%=p.getItemName() %></td>
					<td><%=p.getPrice() %></td>
					<td><%=p.getPaymentType() %></td>
				</tr>
			
				
			<%
			}
			%>
			</tbody>
		</table>

	</div>
	<br>
	<br>

	<br>

	<br>

	<br>

	<br>

	<br>
	<br>



	<%@include file="allcomponent/footer.jsp"%>

</body>
</html>