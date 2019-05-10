package WebProject.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UserBusiness.UserOperation;
import dao.UserDao;

public class LoginController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 UserDao user=new UserDao();
		 user.setUsername(request.getParameter("username"));
		 user.setPassword(request.getParameter("password"));
		 user=UserOperation.Login(user);
		 PrintWriter out=response.getWriter();
		 if(user.getUser_type().equalsIgnoreCase("admin")) {
			HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 response.sendRedirect("adminDash.jsp");
		 }
		 else if(user.getUser_type().equalsIgnoreCase("user")) {
			 HttpSession session=request.getSession(true);
			 session.setAttribute("user", user);
			 response.sendRedirect("userDash.jsp?id="+session.getId());
		 }
		 else {
			 
			 response.sendRedirect("login.jsp");
		 }
	}

}
