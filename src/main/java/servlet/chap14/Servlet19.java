package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet19
 */
@WebServlet("/Servlet19")
public class Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet19() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country FROM Customers";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			List<Customer> list = new ArrayList<>();
			while (rs.next()) { 									// 행이 true일때 next로 넘어감
//				String customerName = rs.getString(2);
//				String address = rs.getString(3);
				int customerId = rs.getInt("CustomerID");       // 대소문자 구분 안함
				String customerName = rs.getNString("CustomerName");
				String address = rs.getNString("Address");
				String city = rs.getString("City");
				String country = rs.getString("Country");
				
				Customer customer = new Customer();
				
				customer.setId(customerId);
				customer.setName(customerName);
				customer.setAddress(address);
				customer.setCity(city);
				customer.setCountry(country);
				
				list.add(customer);
				
			}
			// 4. add attribute
			request.setAttribute("customers", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
			// 5. forward
			String path = "/WEB-INF/view/chap14/view07.jsp";
			request.getRequestDispatcher(path).forward(request, response);
	}
			
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
