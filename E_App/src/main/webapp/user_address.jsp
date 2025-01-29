<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ page import="com.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>

<%@include file="allcomponent/allCss.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="allcomponent/navbar.jsp"%>
	<div class="container">
		<div class="row p-3">
			<div class="col-md-5 offset-md-3">
				<div class="card">
					<div class=card-body>					
						<h3 class="text-center text-success p-1">Edit Address</h3>
						
					<form action="">

							<div class="form-group">
								<label for="exampleInputAddress1">Address </label> <input
									type="text" class="form-control" id="exampleInputAddress1"
									placeholder="Enter address" required="required" name="address">
							</div>
							
				
							<div class="form-group">
								<label for="exampleInputLandMark1">Land Mark </label> <input
									type="text" class="form-control" id="exampleInputLandMark1"
									placeholder="Enter landmark" required="required" name="landmark">

							</div>
											
											
							<div class="form-group">
								<label for="exampleInputCity1">City </label> <input
									type="text" class="form-control" id="exampleInputCity1"
									placeholder="Enter city" required="required" name="city">

							</div>
							
							
							<div class="form-group">
								<label for="exampleInputState1">State </label> <input
									type="text" class="form-control" id="exampleInputState1"
									placeholder="Enter state" required="required" name="state">


							</div>
							
							<div class="form-group">
								<label for="exampleInputState1">Postal Code </label> <input
									type="number" class="form-control" id="exampleInputState1"
									placeholder="Enter postal code" required="required" name="state">


							</div>
						   
							<div class="text-center">
							<button class="btn btn-warning text-white">Add Address</button>
							</div>
							</form>
					
			
						</div>
				</div>
			</div>
		</div>
		
	</div>
	
			<%@include file="allcomponent/footer.jsp"%>
	

</body>
</html>