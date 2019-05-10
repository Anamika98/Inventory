package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.db.DbConnextion;
import dao.UserDao;
import dao.noticeDao;

public class UserOperation {
	
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	public static UserDao Login(UserDao user)
	{
	   try {
		   con=DbConnextion.getCon();
		   stmt=con.prepareStatement("select * from user where uid=? and password=?");
		   stmt.setString(1, user.getUid());
		   stmt.setString(2, user.getPassword());
		   rs=stmt.executeQuery();
		   if(rs.next()) {
			  // System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
			   user.setFirst_name(rs.getString("first_name"));
			   user.setLast_name(rs.getString("last_name"));
			   user.setUser_type(rs.getString("user_type"));
			   user.setId(rs.getInt("id"));
		   }
	   }catch(Exception e) {
		   e.printStackTrace();
	   }
	   return user;
	   }
	public static int addStudent(UserDao user) {
		int i=0;
		try {
			con=DbConnextion.getCon();
			stmt=con.prepareStatement("insert into user(first_name,last_name,uid,password,user_type) values(?,?,?,?,?)");
			stmt.setString(1, user.getFirst_name());
			stmt.setString(2, user.getLast_name());
			stmt.setString(3, user.getUid());
			stmt.setString(4, user.getPassword());
			stmt.setString(5, user.getUser_type());
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
	public static int addNotice1(noticeDao user) {
		int i=0;
		try {
			con=DbConnextion.getCon();
			stmt=con.prepareStatement("insert into notice(number,notice) values(?,?)");
			stmt.setString(1, user.getNumber());
			stmt.setString(2, user.getNotice());
			i=stmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
	}
}
