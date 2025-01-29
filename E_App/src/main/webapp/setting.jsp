<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting</title>
<%@include file="allcomponent/allCss.jsp"%>

<style type="text/css">
	a{
		text-decoration:none;
		color:black;
	}
	
	a:hover{
		text-decoration:none;
		color:#283593; 
	
	}
	
</style>

</head>
<body style="background-color: #f7f7f7;">
	
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="allcomponent/navbar.jsp"%>
	
	<div class="container mb-5">

			<h3 class="text-center mt-5">Hello,${userobj.name}</h3>


		<div class="row p-1">
			
			<div class="col-md-6 mt-3"  style="margin:auto;">
				<a href="edit_profile.jsp">

					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-pen-to-square fa-3x"></i>
							</div>
							<h4>Edit Profile</h4>
						</div>
					</div>
				</a>
			</div>
		</div>
		
		<div class="row p-1">


			<div class="col-md-6 mt-3">
				<a href="order.jsp">

					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>

							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 mt-3">
				<a href="helpline.jsp">

					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fas fa-user-circle fa-3x"></i>
							</div>

							<h4>Help Center</h4>
							<p>24*7 Service</p>
						</div>
					</div>
				</a>
			</div>
		</div>
   </div>
 <div class=""> 
   <%@include file="allcomponent/footer.jsp"%>
 </div> 
	
</body>
</html>