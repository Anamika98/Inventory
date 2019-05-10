package UserBusiness;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import inventory.db.dbConnection;

public class productcount {
	static PreparedStatement stmt=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public int total() {
		int total=0;
		try {
			con=dbConnection.getCon();
			stmt=con.prepareStatement("select count(*) as total from product");
			rs=stmt.executeQuery();
			rs.next();
			total=rs.getInt("total");
		}catch(Exception e) {
			e.printStackTrace();
		}
		return total;
	}
}