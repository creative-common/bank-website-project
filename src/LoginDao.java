import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

public class LoginDao {
	
	
	public static ModelAdmin loginAdmin(ModelLogin login) throws ClassNotFoundException, SQLException{
		
		
		ModelAdmin admin = new ModelAdmin();
		ResultSet result = null;
		String query = "select * from `admin` where `email` =  '"+ login.getEmail() +"' and `password` = '" + login.getPassword() + "'";
		
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		result =  st.executeQuery(query);
		
		//Log Statements
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());
		
		
		//Step - 2: Check for the admin user
		
		 if(result.next()) {
			 
				 admin.setAdmin_id(result.getInt("admin_id"));
				 admin.setFirst_name(result.getString("first_name"));
				 admin.setLast_name(result.getString("last_name"));
				 admin.setEmail(result.getString("email"));
			 
	     }
		 
			st.close();
			conn.close();
		 
		
		return admin;
		
	}
	
	public static ModelUser loginUser(ModelLogin login) throws ClassNotFoundException, SQLException{
		
		ModelUser user = new ModelUser();
		
		ResultSet result = null;
		
		String query = "select * from `user` where `email` =  '"+ login.getEmail() +"' and `password` = '" + login.getPassword() + "'";
		
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		result =  st.executeQuery(query);
		
		//Log Statements
		System.out.println(login.getEmail());
		System.out.println(login.getPassword());
		
		
		
		
		//Step - 2: Check for the bank user
		
		 if(result.next()) {
			 
				 System.out.println("Email Matched user");
				 user.setUser_id(result.getInt("user_id"));
				 user.setFirst_name(result.getString("first_name"));
				 user.setLast_name(result.getString("last_name"));
				 user.setEmail(result.getString("email"));
			
	     }
		 
		 return user;
		
		
		
	}
	
	
	

}
