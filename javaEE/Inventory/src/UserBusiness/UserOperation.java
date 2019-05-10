package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import inventory.db.dbConnection;
import dao.UserDao;
import dao.ProductDao;
import dao.OrderDao;



public class UserOperation {
	
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	public static UserDao Login(UserDao user)
	{
	   try {
		   con=dbConnection.getCon();
		   stmt=con.prepareStatement("select * from user where username=? and password=?");
		   stmt.setString(1, user.getUsername());
		   stmt.setString(2, user.getPassword());
		   rs=stmt.executeQuery();
		   if(rs.next()) {
			  // System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
			   user.setId(rs.getInt("id"));
			   user.setFirst_name(rs.getString("first_name"));
			   user.setLast_name(rs.getString("last_name"));
			   user.setUser_type(rs.getString("user_type"));
		   }
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return user;
	   }
	public static int addProduct(ProductDao user) {
		int i=0;
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("insert into product(name,price,quantity,description,category) values(?,?,?,?,?)");
			stmt.setString(1, user.getName());
			stmt.setString(2, user.getPrice());
			stmt.setString(3, user.getQuantity());
			stmt.setString(4, user.getDescription());
			stmt.setString(5, user.getCategory());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	public static int addUser(UserDao user) {
		int i=0;
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("insert into user(first_name,last_name,username,password,user_type,mobile,email) values(?,?,?,?,?,?,?)");
			stmt.setString(1, user.getFirst_name());
			stmt.setString(2, user.getLast_name());
			stmt.setString(3, user.getUsername());
			stmt.setString(4, user.getPassword());
			stmt.setString(5, user.getUser_type());
			stmt.setString(6, user.getMobile());
			stmt.setString(7, user.getEmail());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	   }
	
	public static int addOrder(OrderDao user) {
		int i=0;
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("insert into myorder(customerId,orderId,orderDate,phoneNo,address) values(?,?,?,?,?)");
			stmt.setString(1, user.getCustomerId());
			stmt.setString(2, user.getOrderId());
			stmt.setString(3, user.getOrderDate());
			stmt.setString(4, user.getPhoneNo());
			stmt.setString(5, user.getAddress());
			
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	
}
