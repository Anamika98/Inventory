package WebProject.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDao;
import UserBusiness.UserOperation;

public class addorder extends HttpServlet {
	  public void doGet(HttpServletRequest request,HttpServletResponse response) {
		  doPost(request,response);
	  }
	  public void doPost(HttpServletRequest request,HttpServletResponse response) {
		  try {
			  OrderDao user=new OrderDao();
			  user.setCustomerId(request.getParameter("customerId"));
			  user.setOrderId(request.getParameter("orderId"));	
			  user.setOrderDate(request.getParameter("orderDate"));
			  user.setPhoneNo(request.getParameter("mobileNo"));
			  user.setAddress(request.getParameter("address"));
			
			  
			  int i=UserOperation.addOrder(user);
			  if(i>0) {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message", "Student Added Successfully");
				  response.sendRedirect("placeorder.jsp");
			  }
			  else {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message","Student not added" );
				  response.sendRedirect("placeorder.jsp");
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	  }
	}
