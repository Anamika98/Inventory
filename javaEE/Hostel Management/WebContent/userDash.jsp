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
	<link rel="stylesheet" type="text/css" href="userDash.css">
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
        <a href="studentinfo.html" target="i_fr"><li>StudentInfo</li></a>
        	<a href="Login.jsp"><li>LogOut</li></a>
          </ul>
        </div>
		
	</div>

		<div class="main">
			<div class="sidebar">
        	<ul>
        		<a href="dashboard.jsp" target="i_fr"><li>Dashboard</li></a>
        		<a href="profie.jsp" target="i_fr"><li>Student Info</li></a>
        		<a href="attendence.jsp" target="i_fr"><li>Attendence</li></a>
        		<a href="fine.html" target="i_fr"><li>Fines&Dues</li></a>
        		<a href="noticeView.jsp" target="i_fr"><li>notices</li><br></a>
        		<a href="report.jsp" target="i_fr"><li>report</li></a> 
        	</ul>
       
        </div>

		<div class="column"><iframe	width="1000px" height="450px" name="i_fr" src="dashboard.jsp" frameborder="0" allowfullscreen>
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