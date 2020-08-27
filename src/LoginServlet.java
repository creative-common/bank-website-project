

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
//		response.sendRedirect("AdminCustomers");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			
			//Prepare the query to look for manager or simple bank user
			
			ModelLogin login = new ModelLogin();
			login.setEmail(request.getParameter("email"));
			login.setPassword(request.getParameter("password"));
			
			
			
			//Step - 2: Check for the admin user
			 ModelAdmin admin = LoginDao.loginAdmin(login);
			
			//If Admin User - Redirect the user to admin dashboard
			 
			 if(admin.getEmail()!=null && admin.getEmail().equals(login.getEmail())) {
		    	  System.out.println("User found Admin: - " + admin.getEmail());
		    	  HttpSession session = request.getSession();
		    	  session.setAttribute("first_name", admin.getFirst_name());
		    	  session.setAttribute("user_id", admin.getAdmin_id());
		    	  session.setAttribute("email", admin.getEmail());
		    	  session.setAttribute("user_type", "admin");
		    	  response.sendRedirect("admin");
		    	  
		     }
			 
			 //If Normal Bank User - Redirect to user dashboard
			
				ModelUser user = LoginDao.loginUser(login);
			 
				  
				 if(user.getEmail()!=null && user.getEmail().equals(login.getEmail())) {
			    	  System.out.println("User found - Bank User: - " + user.getEmail());
			    	  HttpSession session = request.getSession();
			    	  session.setAttribute("first_name", user.getFirst_name());
			    	  session.setAttribute("user_id", user.getUser_id());
			    	  session.setAttribute("email", user.getEmail());
			    	  session.setAttribute("user_type", "user");
			    	  response.sendRedirect("user");
			    	  
			     }
				
				
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			PrintEx.printSQLException(e);
		} 
		
		
		
		
	}

}
