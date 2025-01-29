<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>


<div class="container-fluid" style="height: 10px; background-color:#303f9f">

</div>


<div class="container-fluid p-4">

	<div class="row">

		<div class="col-md-3">
			<h1><i class="fa-solid fa-cart-shopping" style="font-size:36px"></i>   Easy.lk</h1>
		</div>
		
		
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action="search.jsp" method="post">
			<input class="form-control mr-sm-2" type="search" name="ch" placeholder="Search" aria-label="Search">
			<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
        </div>
        
		
		<c:if test="${not empty userobj}">
		
			<div class="col-md-3">
			
			    <a href="checkout.jsp"><i class="fa-solid fa-cart-plus fa-2x"></i></a>	
			  
				<a href="" class="btn btn-success">
				<i class="fa fa-user"></i>	${userobj.name}</a>
				 
				<a href="logout" class="btn btn-primary text-white">
				<i class="fa-solid fa-right-from-bracket"></i>	Logout</a>
			</div> 
		
		</c:if>

		<c:if test="${empty userobj}">
		
			<div class="col-md-3">
				<a href="login.jsp" class="btn btn-success">
				<i class="fa-solid fa-right-to-bracket"></i>	Login</a> 
				
				<a href="register.jsp" class="btn btn-primary text-white">
				<i class="fa-solid fa-user-plus"></i>	Sign up</a>
			</div>
				
		</c:if>		

	</div>

</div>





<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="#"> </a>

	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a href="index.jsp" class="nav-link" href="#"><i class="fa fa-home"aria-hidden="true"></i>	Home
					<span class="sr-only">(current)</span>
			</a></li>


			<li class="nav-item active"><a class="nav-link" href="all_Electronics.jsp">
			<i class="fa-solid fa-camera"></i>	Electronic Accessory</a></li>

			<li class="nav-item active"><a class="nav-link" href="all_HomeLifestyles.jsp">
			<i class="fa-solid fa-house-laptop"></i>	Home & Lifestyles</a></li>

			<li class="nav-item active"><a class="nav-link disabled"href="all_Gift.jsp"> 
			<i class="fa-solid fa-gift"></i>	Gifts Items</a></li>
		</ul>
		<form class="form-inline my-2 my-lg-0">

			<a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit"> 
			<i class="fa fa-cog" aria-hidden="true"></i> Setting</a>
			
			<a href="contactus.jsp" class="btn btn-light my-2 my-sm-0 ml-2" type="submit">
				<i class="fa-solid fa-phone"></i>	Contact-US
			</a>


		</form>
	</div>
</nav>











