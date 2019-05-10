package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import chitkara.db.DbConnextion;

public class ProfileOperation {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet showProfile(String uid) {
		try {
			con=DbConnextion.getCon();
			stmt=con.prepareStatement("select * from profile where uid=?");
			stmt.setString(1, uid);
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}

