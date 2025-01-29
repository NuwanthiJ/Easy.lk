
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<%@page isELIgnored="false" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Eshooping Register</title>
<%@include file="allcomponent/allCss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


</head>
<body style="background-color:#f0f1f2;">
	<%@include file="allcomponent/navbar.jsp"%>

	<div class="container p-2">

		<div class="row">


			<div class="col-md-4 offset-md-4">
				<div class="card">

					<div class="card-body">

                     <h1 class="text-center"  style="font-size: 25px;">	Registration Page 	</h1>
                     
                     
                     
                     <c:if test="${not empty succMsg }">
                     
                            <p class="text-center text-success">${succMsg }</p>
                            <c:remove var="succMsg" scope="session"/>
                             
                     
                     
                     </c:if>
                     <c:if test="${not empty  failedMsg}">
                     
                     <p class="text-center text-danger">${succMsg }</p>
                     
                              <c:remove var="failedMsg" scope="session"/>
                              
                              
                     
                     </c:if>
                     
                     

						<form action="register" method="post">



							<div class="form-group">
								<label for="exampleInputEmail1">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									placeholder="Enter Full Name" required name="fname">

							</div>




							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									placeholder="Enter email" required name="email">

							</div>

							<div class="form-group">
								<label for="exampleInputPhone1">Enter Phone Number</label> <input
									type="number" class="form-control" id="exampleInputPhone1"
									placeholder="Enter Phone Number" required name="phone">

							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required name="password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree terms And Conditions</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>


					</div>






				</div>










			</div>






		</div>






	</div>


<%@include file="allcomponent/footer.jsp"%>

</body>
</html>