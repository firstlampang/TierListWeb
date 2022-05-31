
package conn;
import java.sql.*;
public class ConnectionDB {
		Connection conn;
		String url = "jdbc:mysql://localhost:3306/tierlist?characterEncoding=UTF-8&useSSL=false";
		String uname = "root";
		String pwd = "12345678";
		/*12345 */
		
		public Connection getConnection() {
			conn = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url,uname,pwd);
			} 
			catch (Exception e) {
				e.printStackTrace();		
			}
			return conn;
		}
}

