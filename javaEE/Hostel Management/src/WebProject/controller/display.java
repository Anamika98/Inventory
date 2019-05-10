package WebProject.controller;

import java.io.*;
 import javax.servlet.*;
 import javax.servlet.http.*;
 

import chitkara.db.DbConnextion;
import dao.UserDao;

import java.sql.*;
  
 public class display extends HttpServlet {
	 
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			doPost(request,response);
		}

	 
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    		  PreparedStatement stmt=null;
    		 Connection con=null;
    		  UserDao user=new UserDao();
         PrintWriter out = response.getWriter();
         response.setContentType("text/html");
         out.println("<html><body>");
         try {
        	 con=DbConnextion.getCon();   
             ResultSet rs1 = stmt.executeQuery("select * from user");
             out.println("<table border=1 width=50% height=50%>");
             out.println("<tr><th>id</th><th>FIRST</th><th>Last</th><th>uid</th><th>password</th><th>userType</th><tr>");
             while (rs1.next()) {
            	 int s = rs1.getInt("id");
                 String n = rs1.getString("first_name");
                 String nm = rs1.getString("last_name");
                 String sw = rs1.getString("uid"); 
                 String su = rs1.getString("password"); 
                 String sp = rs1.getString("user_type"); 
                 
                 out.println("<tr><td>" + s + "</td><td>" + n + "</td><td>" + nm + "</td><td>" + sw + "</td><td>" + su + "</td><td>" + sp + "</td></tr>"); 
             }
             out.println("</table>");
             out.println("</html></body>");
             con.close();
            }
             catch (Exception e) {
            	 e.printStackTrace();
         }
     }
 }
 