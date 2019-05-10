package WebProject.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UserBusiness.UserOperation;
import dao.UserDao;
import dao.noticeDao;

public class addNotice extends HttpServlet {
	 public void doGet(HttpServletRequest request,HttpServletResponse response) {
		  doPost(request,response);
	  }
	  public void doPost(HttpServletRequest request,HttpServletResponse response) {
		  try {
			  noticeDao hel=new noticeDao();
			  hel.setNumber(request.getParameter("number"));
			  hel.setNotice(request.getParameter("notice"));
			  int i=UserOperation.addNotice1(hel);
			  if(i>0) {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message", "Student Added Successfully");
				  response.sendRedirect("NoticePush.jsp");
			  }
			  else {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message","Student not added" );
				  response.sendRedirect("NoticePush.jsp");
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	  }
	}
