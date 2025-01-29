<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
	<script>
		function alertFunction()() {
			alert("Item Add Sucessfully...!");
		}
	</script>
<title>Admin: Add New Item</title>
	<%@ include file="allCss.jsp"%>
</head>


<body style="background-color: #f0f2f2;">
	<%@ include file="adminNavbar.jsp"%>
	
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>
	
	<div class = "container mt-5">
		<div class = "row">
			<div class = "col-md-4 offset-md-4">
				<div class = "card">
					<div class = "card-body">
						<h4 class = "text-center"> Add Items</h4>
						
							 <c:if test="${not empty succMsg }">
	                             <p class="text-center text-success">${succMsg}</p>
	                             <c:remove var="succMsg" scope="session"/>
                             </c:if>
                             
                             
                             <c:if test="${not empty failedMsg }">
	                             <p class="text-center text-danger">${failedMsg}</p>
	                             <c:remove var="failedMsg" scope="session"/>
                             </c:if>
						
						
						
						<form action = "../add_Items" method = "post" enctype = "multipart/form-data">
						
						
								<div class = "from-group mt-2">
										<label for="exampleTnputEmail1"> Item Name*</label>
										<input name="iname" type="text" class="form-control" 
										id="exampleTnputEmail1" aria-describedby="emailHelp" required>
								</div>
								
								<div class = "from-group mt-3">
										<label for="exampleTnputPassword1"> Price*</label>
										<input name="price" type="number" class="form-control" 
										id="exampleTnputPassword1" required>
								</div>
								
								<div class = "from-group mt-2">
										<label for="exampleTnputEmail1"> Item Description*</label>
										<input name="description" type="text" class="form-control" 
										id="exampleTnputEmail1" aria-describedby="emailHelp" required>
								</div>
								
								<div class = "from-group mt-3">
										<label for="inputState"> Item Categories</label>
										<select id="inputState" name="categories" class="form-control">
											<option selected> --Select--</option>
											<option value="Electronics"> Electronic Accessory</option>
											<option value="Home & Lifestyles"> Home & Lifestyles</option>
											<option value="Gift"> Gift Item</option>
										
										</select>	 
								</div>
								
								
								
								
								<div class = "from-group mt-3">
										<label for="inputState"> Item Status</label>
										<select id="inputState" name="status" class="form-control">
											<option selected> --Select--</option>
											<option value="Active"> Active </option>
											<option value="Inactive"> Inactive </option>
										
										</select>
								</div>
								
								<div class = "from-group mt-4">
										<label for="exampleFormControlFile1"> Upload Photo</label>
										<input name="image" type="file" class="form-control-file" 
										id="exampleFormControlFile1">
								</div>
								
								
								<button type="submit" class="btn btn-primary  mt-4">Add</button>
								
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