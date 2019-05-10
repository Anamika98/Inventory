package inventory.db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class dbConnection implements Provider {
	static Connection con=null;
	
	public static Connection getCon() throws SQLException {
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,username,password);
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

}    