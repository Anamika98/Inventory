package WebProject.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;
import UserBusiness.UserOperation;

public class adduser extends HttpServlet {
	  public void doGet(HttpServletRequest request,HttpServletResponse response) {
		  doPost(request,response);
	  }
	  public void doPost(HttpServletRequest request,HttpServletResponse response) {
		  try {
			  UserDao user=new UserDao();
			  user.setFirst_name(request.getParameter("first"));
			  user.setLast_name(request.getParameter("last"));
			  user.setUsername(request.getParameter("username"));
			  user.setPassword("Anamika12345");
			  user.setUser_type("user");
			  user.setMobile(request.getParameter("tel"));
			  user.setEmail(request.getParameter("email"));
			
			  
			  int i=UserOperation.addUser(user);
			  if(i>0) {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message", "Student Added Successfully");
				  response.sendRedirect("signup.jsp");
			  }
			  else {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message","Student not added" );
				  response.sendRedirect("signup.jsp");
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	  }
	}
