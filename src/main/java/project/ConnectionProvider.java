package project;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","1234");
			return con;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
