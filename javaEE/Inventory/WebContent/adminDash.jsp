 <%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user");
%>
<html>
<head>
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="inventory.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body{
	background-image: url('inventory.jpg');
	background-size: 100% 100%;	
	
	width: 100%;
	height: 102vh;		
}
</style>
</head>
<body>
	<div class="bgimage">
		<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
			<div class="container">
				<a href="" class="navbar-brand font-weight-bold" >Welcome  <%=user.getFirst_name()%> <%=user.getLast_name()%> </a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsenavbar">
				<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center" id="collapsenavbar">
					<ul class="navbar-nav ml-auto" >
						<li class="nav-item">
							<a href="productshow.jsp" class="nav-link text-white">PRODUCTS</a>
						</li>
						<li class="nav-item">
							<a href="ourcampus.html" class="nav-link text-white">CATEGORY</a>
						</li>
			
				
						<li class="nav-item">
							<a href="ordershow.jsp" class="nav-link text-white">ORDERS DETAILS </a>
						</li>
						
						<li class="nav-item">
							<a href="usershow.jsp" class="nav-link text-white">USERS</a>
						</li>
						<li class="nav-item">
							<a href="login.jsp" class="nav-link text-white"> LOG OUT</a>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
	</div>
</body>
</html>
