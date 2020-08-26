

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			//Initialize the database
			Connection conn = Database.initializeDatabase();
			
			//Prepare the query to look for manager or simple bank user
			
			ResultSet userResult = null;
			
			//Step - 1: Check for the bank user
			String checkUser = "select * from `user` where `email` =  '"+request.getParameter("email")+"' and `password` = '" + request.getParameter("password") + "'";  
			PreparedStatement st = conn.prepareStatement(checkUser);
			System.out.println(checkUser);
			userResult =  st.executeQuery(checkUser);
			System.out.println(request.getParameter("email"));
			System.out.println(request.getParameter("password"));
			
			
			//Step - 2: Check for the admin user
			
			 if(userResult.next()) {
		    	  System.out.println("User found : - " + userResult.getString("email"));
		    	  HttpSession session = request.getSession();
		    	  session.setAttribute("first_name", userResult.getString("first_name"));
		    	  session.setAttribute("user_id", userResult.getString("user_id"));
		    	  session.setAttribute("email", userResult.getString("email"));
		    	  session.setAttribute("user_type", "user");
		    	  response.sendRedirect("admin");
		    	  
		     }
			 
				st.close();
				conn.close();
				
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
