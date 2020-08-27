

import java.io.Serializable;

public class ModelAdmin implements Serializable{
	
//	Admin Getter Setter Class  
	
	private static final long serialVersionUID = 1L;

	 private String first_name;
	 private String last_name;
	 private String password;
	 private int admin_id;
	 private String email; 
	  
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	  
	  
	  
}
