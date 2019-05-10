<%@page import="dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user");
%>
<html>
<head>
<center><h3>Dashboard</h3></center>
<style>

 h1{
  font-size: 18px;
  font-weight: bold;
  color: black;
  font-family: 'Montserrat',sans-serif;
  }
  h3{
     font-size: 35px;
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
<jsp:useBean id="c1" class="UserBusiness.myfunction"></jsp:useBean>
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
      <% if(session.getAttribute("message")!=null){ %>
       <div class="alert alert-info alert-dismissible">
                  <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                  <h5><i class="icon fa fa-info"></i> Info!</h5>
                  <%=session.getAttribute("message") %>
         </div>
         <%} %>
       <div class="card card-primary">
              <div class="card-header">
                <center><h3 class="card-title">Add Student</h3></center>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             <center> <form role="form" action="addstudent" method="post">
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1"><h1>First Name</h1></label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="first_name" placeholder="Enter First Name">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1"><h1>Last Name</h1></label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Last Name" name="last_name">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1"><h1>UID</h1></label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter UID" name="uid">
                  </div>
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form></center>
            </div>
            <!-- /.card -->
      </div> <!-- Container fluid -->
    </section>    <!-- /.content -->
  </div>

</div> <!-- /.content-wrapper -->

<script>
$("#dashboard").addClass("active");
</script>
</body>
</html>