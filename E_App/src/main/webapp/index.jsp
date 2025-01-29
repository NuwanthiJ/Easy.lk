<%@ page import="com.entity.User" %>
<%@ page import="com.entity.Products"%>
<%@ page import="java.util.List" %>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.ItemDAOImpl" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Easy.lk - Online Shopping</title>
<%@include file="allcomponent/allCss.jsp"%>

<style type="text/css">
.back-img {
	background: url("images/b.jpg");
	height: 80vh;
	width:100%;
	background-repeat: no-repeat;
	background-size: cover;
}

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
	<div class="container-fluid back-img"></div>
	
	
	
<!-- Start  Electronic Accessory-->	

	<div class="container">

		<h3 class="text-center">Electronic Accessory</h3>
		<div class="row ">

			<%
			ItemDAOImpl daoE= new ItemDAOImpl(DBConnect.getConn());
			List<Products> listE =daoE.getElectronicAccessories();
			for(Products p: listE){
			%>
			  <div class="col-md-4 ">
			     <div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="Products/<%=p.getPhotoName() %>"
							style="width:100%; height: 100%">
							
							<p><%=p.getItemName() %></p>
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
			
			<div class="text-center mt-2">
			<a href="all_Electronics.jsp"><button type="button" class="btn btn-outline-danger">View All <i class='fas fa-angle-double-right' style='color:red'></i></button></a>
		</div>
		
	</div>

 <hr>
 
 
 <!-- Start  Home & Lifestyles-->	

 <div class="container">

		<h3 class="text-center">Home & Lifestyles</h3>
		<div class="row ">
			
			<%
			ItemDAOImpl daoH= new ItemDAOImpl(DBConnect.getConn());
			List<Products> listH =daoH.getHomeLifestyle();
			for(Products p: listH){
			%>
			  <div class="col-md-4 ">
			     <div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="Products/<%=p.getPhotoName() %>"
							style="width:100%; height: 100%">
							
							<p><%=p.getItemName() %></p>
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
		
		<div class="text-center mt-2">
			<a href="all_HomeLifestyles.jsp"><button type="button" class="btn btn-outline-danger">View All <i class='fas fa-angle-double-right' style='color:red'></i></button></a>
		</div>
		
</div>
 

 <hr>
 
 <!-- Start  Gifts Items-->	
 <div class="container">

		<h3 class="text-center">Gifts Items</h3>
		
		<div class="row ">

			<%
			ItemDAOImpl daoG= new ItemDAOImpl(DBConnect.getConn());
			List<Products> listG =daoG.getGiftItems();
			for(Products p: listG){
			%>
			  <div class="col-md-4 ">
			     <div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="Products/<%=p.getPhotoName() %>"
							style="width:100%; height: 100%">
							
							<p><%=p.getItemName() %></p>
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

		<div class="text-center mt-2">
			<a href="all_Gift.jsp"><button type="button" class="btn btn-outline-danger">View All <i class='fas fa-angle-double-right' style='color:red'></i></button></a>
		</div>

	</div>


<%@include file="allcomponent/footer.jsp"%>


</body>
</html>