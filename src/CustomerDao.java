import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CustomerDao {

	
	public static ModelUser getCustomerUsingEmail(String email) throws ClassNotFoundException, SQLException {
		String query = "Select * from 'user' where 'email' = '" +email+"'";
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		
		ModelUser user = new ModelUser();
		
		ResultSet results = st.executeQuery(query);
		if(results.next()) {
			user.setFirst_name(results.getString("first_name"));
			user.setLast_name(results.getString("last_name"));
			user.setSin_number(results.getInt("sin_number"));
			user.setAddress(results.getString("address"));
			user.setContact(results.getInt("contact"));
			user.setUser_id(results.getInt("user_id"));
			user.setEmail(results.getString("email"));
			
		}
		
		
		return user;
		
	}
	
	//Function returns boolean message
	//If added successfully then true
	// false means error occurred
	public static boolean addCustomerAndCreateAccount(ModelUser customer, ModelAccount account) throws ClassNotFoundException, SQLException {
		
		String query = "INSERT INTO 'user' ('first_name', 'last_name', 'sin_number', 'contact', 'address', 'email', 'password') VALUES ( ?, ?, ?, ?, ?, ?, ?)";
		
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		
		st.setString(1, customer.getFirst_name());
		st.setString(2, customer.getLast_name());
		st.setInt(3, customer.getSin_number());
		st.setInt(4, customer.getContact());
		st.setString(5, customer.getAddress());
		st.setString(6, customer.getEmail());
		st.setString(7, customer.getPassword());
		
		if(st.executeUpdate(query) == 1) {
			
			customer = getCustomerUsingEmail(customer.getEmail());
			
			account.setUser_id(customer.getUser_id()); //set userId
			
			if(AccountDao.createBankAccount(account)) { //Call another function from another class to create bank account
				return true;
			}else {
				return false;
			}
		
		}else {
			return false;
		}
		
	}
	
	
	//Function to get all the customers
	public static ArrayList<ModelUser> getAllCustomers() throws ClassNotFoundException, SQLException{
		
		String query = "Select * from 'user'";
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		
		System.out.println(query);
		
		
		ArrayList<ModelUser> userList = new ArrayList<>();
		
		ResultSet results = st.executeQuery(query);
		if(results.next()) {
			ModelUser user = new ModelUser(); //Create Model User each time
			
			user.setCreated_at(results.getString("created_at"));
			user.setFirst_name(results.getString("first_name"));
			user.setLast_name(results.getString("last_name"));
			user.setSin_number(results.getInt("sin_number"));
			user.setAddress(results.getString("address"));
			user.setContact(results.getInt("contact"));
			user.setUser_id(results.getInt("user_id"));
			user.setEmail(results.getString("email"));
			
			userList.add(user); //add the row to the array list
			
		}
		
		return userList;
	}
	
	
	
	
	
	
	
	
	
}
