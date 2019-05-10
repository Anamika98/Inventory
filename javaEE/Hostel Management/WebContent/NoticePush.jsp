<%@page import="dao.noticeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%noticeDao hello2=(noticeDao)session.getAttribute("hello2");
%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 h3{
 font-size:40px;
 }
 
  h1{
  font-size: 18px;
  font-weight: bold;
  color: black;
  font-family: 'Montserrat',sans-serif;
  }
  
    input {
 
  width: 40%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 2px;
  margin-bottom: 2px;
  margin left: 50px;
}
button[type=submit] {
  background-color: #4CAF50;
  color: green;

}
</style>
</head>
<body>
<center><h3>Dashboard</h3></center>
<center> <form role="form" action="addNotice" method="post">
                <div class="card-body">
                 <div class="form-group">
                    <label for="exampleInputPassword1"><h1>NUMBER</h1></label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter number" name="number">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1"><h1>NOTICE</h1></label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter notice" name="notice">
                  </div>
                  
                </div>
                <!-- /.card-body -->
<br>
<br>
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form></center>


</body>
</html>