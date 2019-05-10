<%@page import="java.sql.ResultSet"%>
<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
</head>
<body>
 <ul>
  <li><a href="#home">Home</a></li>
  <li><a href="#news">Items</a></li>
  <li><a href="#contact">Contact</a></li>
  <li style="float:right"><a class="active" href="login.jsp">LOGOUT</a></li>
</ul>
<jsp:useBean id="c1" class="UserBusiness.userdisplay"></jsp:useBean>
<jsp:useBean id="c2" class="UserBusiness.usercount"></jsp:useBean>
<br>	
<br>
<br>
<br>
<center><table border="2">
 <tr>
 	<td colspan="2">ID</td>
	<td colspan="2">FirstName</td> 
	<td colspan="2">LastName</td> 
	<td colspan="2">Username</td>
	<td colspan="2">Mobile</td> 
	<td colspan="2">E-mail</td>
		</tr>
			<% int total=c2.total(); %>
             <% ResultSet rs=c1.dis();
             while(total!=0){
                 if(rs.next()){
             %>
             
             <tr>
	 <td colspan="2"> <%=rs.getString("id")%> </td>
	<td colspan="2"><%=rs.getString("first_name")%></td>
    	<td colspan="2"><%=rs.getString("last_name")%></td>
     <td colspan="2"><%=rs.getString("username")%></td>
	<td colspan="2"><%=rs.getString("mobile")%></td>
<td colspan="2"><%=rs.getString("email")%></td>
</tr>
<%total--; %>
    <%}} %> </table></center>
             
             

</body>
</html>