<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.User" %>
<%@ page import="com.DAO.ItemDAOImpl" %>
<%@ page import="com.entity.Products"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>

<body style="background-color: #f7f7f7;">

	 <%
     User u =(User)session.getAttribute("userobj");
     %>
	
	<%@ include file="allcomponent/navbar.jsp"%>
	
	<%
	int pid = Integer.parseInt(request.getParameter("pid"));
	ItemDAOImpl dao= new ItemDAOImpl(DBConnect.getConn());
	Products p=dao.getItemById(pid);
	%>
	
	<div class="container p-5">
		<div class="row">
		<div class="col-md-6 text-center p-5 border bg-white">
			<img src="Products/<%=p.getPhotoName() %>" style="height:100%; width:100%;"><br>
		</div>
		
		<div class="col-md-6 text-center p-5 border bg-white">
			<h2><%=p.getItemName() %></h2>
			<h5 class="text-dark text-lg-left m-4"><%=p.getDescription() %></h5>
			<h3 style="color:orange;"><%=p.getPrice() %> LKR</h3>
			<div class="row ml-4">
			
				<div class="col-md--4 text-danger text-center p-2">
					<i class="fa-solid fa-money-bill-wave fa-2x"></i>
					<p>Cash On Delivery</p>
				</div>
				
				<div class="col-md--4 text-danger text-center p-2">
					<i class="fa-solid fa-rotate-left fa-2x"></i>
					<p>Return Available</p>
				</div>
				
				<div class="col-md--4 text-danger text-center p-2">
					<i class="fa-solid fa-truck-fast fa-2x"></i>
					<p>Free Shipping</p>
				</div>
				
		   </div>
		   
			<div class="text-center p-3">
				        <%if(u==null)
						  {%>
						 		<a href="login.jsp" class="btn btn-success btn-lg ml-5"><i class="fa fa-cart-plus"></i>	Add Cart</a> 
						  <%}else {
							 
						   %>
							    <a href="checkout.jsp?pid=<%=p.getItemID() %>&&uid=<%=u.getId() %>" class="btn btn-success btn-lg m-5"><i class="fa fa-cart-plus"></i>	Add Cart</a>
						  <%
						  
						  }%>
							
		   </div>
		
		</div>
		</div>
	</div>
	
	<%@include file="allcomponent/footer.jsp"%>

</body>
</html>