<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.CartDAOImpl"%>
<%@ page import="com.entity.Cart"%>
<%@ page import="com.entity.User"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>
<%@include file="allcomponent/allCss.jsp"%>
</head>

<body  style="background-color:#f0f1f2;">
	<%@include file="allcomponent/navbar.jsp"%>
	
	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	
	
	
	<c:if test="${not empty succMsg }">
		<div class="alert alert-success" role="alert">${succMsg }</div>
		<c:remove var="succMsg" scope="session" />
	</c:if>



	<c:if test="${not empty failedMsg }">
		<div class="alert alert-danger text-center mt-1" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>
	
	
	
	<div class="container p-3">
		<div class="row mt-2">
			<div class="col-md-6">				
				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-success mt-2 mb-2">Your Selected Item</h3>
							<table class="table table-striped">
							  <thead>
							    <tr>
							      <th scope="col">Item Name</th>
							      <th scope="col">Price</th>
							      <th scope="col">Action</th>
							    </tr>
							  </thead>
							  
							  <tbody>
							    <%
								User u = (User)session.getAttribute("userobj");

								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getItemByUser(u.getId());
								Double total_price = 0.00;
								for (Cart c : cart) {
									total_price = c.getTotal_price();
								%>

								<tr>
									<th scope="row"> <%=c.getItemName() %> </th>
									<td> <%=c.getPrice() %> </td>
									<td>
									<a href="remove_item?pid=<%=c.getPid()%>&&uid=<%=c.getUserId()%>&&cid=<%=c.getCid() %>"  class="btn btn-sm btn-danger">Remove</a>
								   </td>
								   
							   </tr>


								<%
								}
								%>

								<tr>
									<td>Total Price</td>
									<td></td>
									<td><%=total_price%></td>
								</tr>

							  </tbody>
						 </table>						
					</div>					
				</div>				
			</div>
			
				<div class="col-md-6">
					<div class="card">
						<div class="card-body">
						
							<h3 class="text-center text-success mt-2 mb-2">Your Details for Order</h3><hr>
								<form action="order" method="post">
								<input type="hidden" value="${userobj.id }" name="id">
								
								
									<div class="form-row">
									    <div class="form-group col-md-6">
									      <label for="inputName4"><b>Name :</b></label>
									      <input name="username" type="text" class="form-control" id="inputName4" value="${userobj.name }">
									    </div>
									    <div class="form-group col-md-6">
									      <label for="inputEmail4"><b>Email :</b></label>
									      <input name="email" type="email" class="form-control" id="inputEmail4" value="${userobj.email }">
									    </div>
									</div>
									
									<div class="form-row">
									    <div class="form-group col-md-6">
									      <label for="inputPhone4"><b>Phone Number :</b></label>
									      <input name="phone" type="number" class="form-control" id="inputPhone4" value="${userobj.phone }">
									    </div>
									    <div class="form-group col-md-6">
									      <label for="inputAddress4"><b>Address :</b></label>
									      <input name="address" type="text" class="form-control" id="inputAddress4" required>
									    </div>
									</div>
									
									<div class="form-row">
									    <div class="form-group col-md-6">
									      <label for="inputLandmark4"><b>Landmark :</b></label>
									      <input name="landmark" type="text" class="form-control" id="inputLandmark4" required>
									    </div>
									    <div class="form-group col-md-6">
									      <label for="inputCity4"><b>city</b></label>
									      <input name="city" type="text" class="form-control" id="inputCity4" required>
									    </div>
									</div>
									
									<div class="form-row">
									    <div class="form-group col-md-6">
									      <label for="inputState4"><b>State :</b></label>
									      <input name="state" type="text" class="form-control" id="inputState4" required>
									    </div>
									    <div class="form-group col-md-6">
									      <label for="inputCode4"><b>Postal Code :</b></label>
									      <input name="pincode" type="number" class="form-control" id="inputCode4" required>
									    </div>
									</div>
									
									<div class="form-group">
									      <label for="inputPayment4"><b>Payment Type :</b></label>
									      <select class="form-control" name="payment">
									      	<option selected value="noselect"> --Select--</option>
											<option value="Cash On Delivery"> Cash on Delivery</option>
											
									      </select>
									</div>
									
									<div class="text-center">
										<button class="btn btn-warning">	Order Now</button>
										<a href="index.jsp" class="btn btn-success">	Continue Shopping</a>
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