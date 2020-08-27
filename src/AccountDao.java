import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Random;

public class AccountDao {

	
	//To create new account
	public static boolean createBankAccount(ModelAccount account) throws ClassNotFoundException, SQLException  {
		
		String query = "INSERT INTO 'account' ('acc_number', 'user_id', 'account_type', 'current_balance') VALUES (?, ?, ?, ?)";
		
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		
		st.setInt(1, getRandomNumber());
		st.setInt(2, account.getUser_id());
		st.setString(3, account.getAccount_type());
		st.setDouble(4, account.getCurrent_balance()); // Initial Deposit money
		
		if(st.executeUpdate() == 1) {
			return true;
		}
		
		return false;
	}
	
	//To update the account balance of the user
	public static boolean updateAccountBalanceUsingAccNumberAndUserId(ModelAccount account) throws ClassNotFoundException, SQLException  {
		
		//user_id and account number
		String query = "UPDATE 'account' SET 'balance'=" +account.getCurrent_balance()+ "WHERE 'user_id'= '" +account.getUser_id()+ "' and 'acc_number'=" +account.getAcc_number();
		
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		System.out.println(query);
		
		if(st.executeUpdate() == 1) {
			return true;
		}
		
		return false;
	}
	
	
	//to generate the account number
	private static int getRandomNumber() {
		return 10000 + new Random().nextInt(99999);
	}
		
	
	//Function getAll BankAcounts of customer by user_id
	public static ArrayList<ModelAccount> getUserBankAccountsByUserId(int user_id) throws ClassNotFoundException, SQLException {
		
		String query = "Select * from 'account' where user_id = " + user_id;
		//Initialize the database
		Connection conn = Database.initializeDatabase();
		PreparedStatement st = conn.prepareStatement(query);
		
		System.out.println(query);
		
		
		ArrayList<ModelAccount> accountList = new ArrayList<>();
		
		ResultSet results = st.executeQuery(query);
		if(results.next()) {
			ModelAccount account = new ModelAccount(); //Create Model with each  iteration
			
			account.setAcc_number(results.getInt("acc_number"));
			account.setAccount_id(results.getInt("account_id"));
			account.setAccount_type(results.getString("account_type"));
			account.setCurrent_balance(results.getDouble("current_balance"));
			account.setUser_id(results.getInt("user_id"));
			account.setCreated_at(results.getString("created_at"));
			
			accountList.add(account);//add the row to the array list
			
		}
		
		return accountList;
		
	}
	
	
}
