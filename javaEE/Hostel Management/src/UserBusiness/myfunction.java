package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import chitkara.db.DbConnextion;

public class myfunction {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public int totalStudentCount() {
		int total=0;
		try {
			con=DbConnextion.getCon();
			stmt=con.prepareStatement("select count(*) as total from user where user_type=?");
			stmt.setString(1, "User");
			rs=stmt.executeQuery();
			rs.next();
			total=rs.getInt("total");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return total;
	}
}
