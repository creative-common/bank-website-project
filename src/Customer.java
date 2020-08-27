

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/Customer")
public class Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.sendRedirect(request.getContextPath()+ "");
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		try {
			
			ModelUser customer = new ModelUser();
			
			customer.setFirst_name(request.getParameter("first_name"));
			customer.setLast_name(request.getParameter("last_name"));
			customer.setAddress(request.getParameter("address"));
			customer.setSin_number(Integer.valueOf(request.getParameter("sin_number")));
			customer.setContact(Integer.valueOf(request.getParameter("contact")));
			customer.setEmail(request.getParameter("email"));
			customer.setPassword(request.getParameter("password"));
			
			
			
			
//		} 
		
//		catch (ClassNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			PrintEx.printSQLException(e);
//		} 
		
		
	}

}
