

import java.io.Serializable;

public class ModelUser implements Serializable{
	
//	User Getter Setter Class  
	
	private static final long serialVersionUID = 2L;

	 private String first_name;
	 private String last_name;
	 private String password;
	 private int user_id;
	 private int sin_number;
	 private int contact;
	 private String address;
	 private String email;
	 private String created_at;
	 
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
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public int getSin_number() {
			return sin_number;
		}
		public void setSin_number(int sin_number) {
			this.sin_number = sin_number;
		}
		public int getContact() {
			return contact;
		}
		public void setContact(int contact) {
			this.contact = contact;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getCreated_at() {
			return created_at;
		}
		public void setCreated_at(String created_at) {
			this.created_at = created_at;
		}
	 
	 

}
