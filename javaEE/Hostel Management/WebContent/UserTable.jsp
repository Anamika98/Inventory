<%@page import="java.sql.*"%>
<%@page import="dao.ProfileDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<jsp:useBean id="c1" class="UserBusiness.display"></jsp:useBean>
<br>
<br>
<br>
<center><table border="2">
 <tr>
 	<td colspan="2">FirstName</td>
	<td colspan="2">LastName</td> 
	<td colspan="2">ID</td> 
	<td colspan="2">E-Mail</td>
	<td colspan="2">PhoneNumber</td> 
		<td colspan="2">FatherName</td>
		<td colspan="2">MotherName</td>
		<td colspan="2">DateOfBirth</td>
		<td colspan="2">Address</td>
		</tr>
		<jsp:useBean id="hello" class="UserBusiness.profileCount"></jsp:useBean>
		
		<% int total=hello.total(); %>
             <% ResultSet rs=c1.dis();
             while(total!=0){
                 if(rs.next()){
             %>
<tr>
	 <td colspan="2"> <%=rs.getString("first_name")%> </td>
	<td colspan="2"><%=rs.getString("last_name")%></td>
    	<td colspan="2"><%=rs.getString("uid")%></td>
     <td colspan="2"><%=rs.getString("email")%></td>
	<td colspan="2"><%=rs.getString("phone_no")%></td>
<td colspan="2"><%=rs.getString("father_name")%></td>
<td colspan="2"> <%=rs.getString("mother_name")%></td>
	<td colspan="2"><%=rs.getString("dob")%></td>
<td colspan="2"><%=rs.getString("address")%></td>
</tr>
<%total--; %>
    <%}} %> </table></center>
             

