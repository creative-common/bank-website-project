import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Database {
	// JDBC Driver Name & Database URL
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    static final String JDBC_DB_URL = "jdbc:mysql://localhost:3306/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
 
    // JDBC Database Credentials
    static final String JDBC_USER = "root";
    static final String JDBC_PASS = "";
    
    protected static Connection initializeDatabase () throws SQLException, ClassNotFoundException {
		
		Class.forName(JDBC_DRIVER);  
		Connection connObj =  DriverManager.getConnection(JDBC_DB_URL, JDBC_USER, JDBC_PASS);
		return connObj;
		 
	}

}
