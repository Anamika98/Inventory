<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="dao.noticeDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%noticeDao hello=(noticeDao)session.getAttribute("hello"); %>
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
h1{

}
</style>
</head>
<jsp:useBean id="c1" class="UserBusiness.NoticeView"></jsp:useBean>
<body>
<center></center>
<br>
<br>
<center><table border="2">
 <tr>
 	<td colspan="2">Number</td>
	<td colspan="2">Notice</td> 
	<jsp:useBean id="hell" class="UserBusiness.noticeCount"></jsp:useBean>
		
		<% int total=hell.total(); %>
	 <% ResultSet rs=c1.dis();
	 while(total!=0){
                
                 if(rs.next()){
             %>
<tr>
	 <td colspan="2"> <%=rs.getString("number")%> </td>
	<td colspan="2"><%=rs.getString("notice")%></td>
	<%total--; %>
	    <%} }%> </table></center>

</body>
</html>