package WebProject.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import UserBusiness.UserOperation;

public class addstudent extends HttpServlet {
	  public void doGet(HttpServletRequest request,HttpServletResponse response) {
		  doPost(request,response);
	  }
	  public void doPost(HttpServletRequest request,HttpServletResponse response) {
		  try {
			  UserDao user=new UserDao();
			  user.setFirst_name(request.getParameter("first_name"));
			  user.setLast_name(request.getParameter("last_name"));
			  user.setUid(request.getParameter("uid"));
			  user.setUser_type("user");
			  user.setPassword("Anamika12345");
			  int i=UserOperation.addStudent(user);
			  if(i>0) {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message", "Student Added Successfully");
				  response.sendRedirect("addStudent.jsp");
			  }
			  else {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message","Student not added" );
				  response.sendRedirect("addStudent.jsp");
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	  }
	}
