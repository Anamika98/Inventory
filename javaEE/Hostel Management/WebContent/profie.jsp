<%@page import="java.sql.ResultSet"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Profile</title>
<style>

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td{
width:40px;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<jsp:useBean id="c1" class="UserBusiness.ProfileOperation"></jsp:useBean>
<body class="hold-transition sidebar-mini">
 <div class="wrapper">
  <!-- Navbar -->
  <!-- /.navbar -->

 <!-- Main Sidebar Container -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      	<div class="row">
          <div class="col-md-8">
          
          
          <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto">
			<figure class="figure">
				<img src="image/vice.jpg" class="figure-img img-fluid rounded-circle" height="150px" width="150px">
				<figcaption>
			</figure>
			
			
           <table>
             <% ResultSet rs=c1.showProfile(user.getUid());
                
                 if(rs.next()){
             %>
             
             
		<center><tr>
	<td colspan="2">FirstName:</td>
	 <td colspan="2"> <%=rs.getString("first_name")%> </td>
</tr>
<tr>
	<td colspan="2">LastName:</td> 
	<td colspan="2"><%=rs.getString("last_name")%></td>
 </tr>
    <tr>
    	<td colspan="2">ID: </td> 
    	<td colspan="2"><%=rs.getString("uid")%></td>
	</tr>
	<tr>
    <td colspan="2">E-Mail: </td>
     <td colspan="2"><%=rs.getString("email")%></td>
</tr>
<tr>
	<td colspan="2">PhoneNumber:</td> 
	<td colspan="2"><%=rs.getString("phone_no")%></td>
	</tr>
	<tr>
	<td colspan="2">FatherName:</td>
	<td colspan="2"><%=rs.getString("father_name")%></td>
</tr>
<tr>

<td colspan="2">MotherName:</td>
<td colspan="2"> <%=rs.getString("mother_name")%></td>
</tr>
<tr>
	<td colspan="2">DateOfBirth:</td>
	<td colspan="2"><%=rs.getString("dob")%></td>
</tr>
<tr>
<td colspan="2">Address:</td>
<td colspan="2"><%=rs.getString("address")%></td>
</tr>
</center>
               
             	<%} %>
            </table>
          </div>
                
      </div><!-- /.container-fluid -->
      </div>
    </section>    <!-- /.content -->
  </div>
</div> <!-- /.content-wrapper -->
</body>
</html>