package WebProject.controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDao;
import UserBusiness.UserOperation;

public class addproduct extends HttpServlet {
	  public void doGet(HttpServletRequest request,HttpServletResponse response) {
		  doPost(request,response);
	  }
	  public void doPost(HttpServletRequest request,HttpServletResponse response) {
		  try {
			  ProductDao user=new ProductDao();
			  user.setName(request.getParameter("name"));
			  user.setPrice(request.getParameter("price"));
			  user.setQuantity(request.getParameter("quantity"));
			  user.setDescription(request.getParameter("description"));
			  user.setCategory(request.getParameter("category"));
			
			  
			  int i=UserOperation.addProduct(user);
			  if(i>0) {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message", "Student Added Successfully");
				  response.sendRedirect("addproduct.jsp");
			  }
			  else {
				  HttpSession session=request.getSession(false);
				  session.setAttribute("message","Student not added" );
				  response.sendRedirect("addproduct.jsp");
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	  }
	}
