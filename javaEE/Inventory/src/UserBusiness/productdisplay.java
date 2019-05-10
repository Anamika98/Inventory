package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import inventory.db.dbConnection;

public class productdisplay {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public ResultSet dis() {
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("select * from product");
			rs=stmt.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
