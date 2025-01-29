<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Products"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.ItemDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Gifts Items</title>
<%@include file="allcomponent/allCss.jsp"%>

<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}


<style type="text/css">
.crd-ho:hover {
	background-color: #fcf7f7;
}



</style>
</head>

<body style="background-color: #f7f7f7;">

   <%
   User u =(User)session.getAttribute("userobj");
   %>



<%@ include file="allcomponent/navbar.jsp"%>
<div class="container-fluid mt-5">
	
	<div class="row p-3">

			<%
			ItemDAOImpl daoG= new ItemDAOImpl(DBConnect.getConn());
			List<Products> listG =daoG.getAllGift();
			for(Products p: listG){
			%>
			  <div class="col-md-3 ">
			     <div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="Products/<%=p.getPhotoName() %>"
							style="width:100%; height: 100%">
							
							<p style="color:black;"><%=p.getItemName() %></p>
							<p style="color:red;"><%=p.getPrice()%> LKR</p>
						<div class="row text-center">

						  <%if(u==null)
						  {%>
						 		<a href="login.jsp" class="btn btn-outline-danger ml-5"><i class="fa fa-cart-plus"></i>	Add Cart</a> 
						  <%}else {
							  
						   %>
							    <a href="checkout?pid=<%=p.getItemID() %>&&uid=<%=u.getId() %>" class="btn btn-outline-danger ml-5"><i class="fa fa-cart-plus"></i>	Add Cart</a>
						  <%
						  
						  }%>
						  
							<a href="view_Items.jsp?pid=<%=p.getItemID() %>" class="btn btn-outline-success ml-3"><i class="fa fa-th-list"></i>	View Details</a>
						</div>
					</div>
			   </div>
			  </div> 
			<%	
			}
			%>
			
		</div>
	
</div>

<%@include file="allcomponent/footer.jsp"%>

</body>
</html>