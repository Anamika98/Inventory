<%@page import="dao.UserDao"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user");
%>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title></title>
	<link rel="stylesheet" type="text/css" href="adminDash.css">
</head>
<body>
	<div class="container">
		<div class="header">
   <div class="leftmenu">
		<h4><%=user.getFirst_name()%><%=user.getLast_name() %></h4>
        </div>
        <div class="rightmenu">
        	<ul>
        		<li>Update Password</li>
        <a href="profie.jsp" target="i_fr"><li>StudentInfo</li></a>
        	<a href="Login.jsp"><li>LogOut</li></a>
          </ul>
        </div>
		
	</div>

		<div class="main">
			<div class="sidebar">
        	<ul>
        		<a href="try.jsp" target="i_fr"><li>Dashboard</li></a>
        		<a href="profie.jsp" target="i_fr"><li>Admin Info</li></a>
        		<a href="UserTable.jsp" target="i_fr"><li>Students</li></a>
        		<a href="addStudent.jsp" target="i_fr"><li>Add Student</li></a>
        		<a href="NoticePush.jsp" target="i_fr"><li>Notice</li><br></a>
        		<a href="report.jsp" target="i_fr"><li>Complaints</li></a> 
        	</ul>
       
        </div>

		<div class="column"><iframe	width="1000px" height="450px" name="i_fr" src="try.jsp" frameborder="0" allowfullscreen>
				this is lgo
			</iframe></div>
		</div>
		<div class="footer">
			<br><br>
			<h2>Copyright@2018cambridgeUniversity</h2>
			
</div>
</div>


</body>
</html>