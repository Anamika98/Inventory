package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import inventory.db.dbConnection;

public class userdisplay {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet dis() {
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("select * from user");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
