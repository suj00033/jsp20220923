package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet30
 */
@WebServlet("/Servlet30")
public class Servlet30 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet30() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// get request param
		String idParam = request.getParameter("id");
		int id = Integer.parseInt(idParam);
		
		// business logic
		String sql = "SELECT CustomerName, ContactName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, id);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					Customer c = new Customer();
					c.setCustomerName(rs.getNString("CustomerName"));
					c.setContactName(rs.getNString("ContactName"));
					c.setAddress(rs.getNString("Address"));
					c.setCity(rs.getNString("City"));
					c.setCountry(rs.getNString("Country"));
					c.setId(id);
					
					request.setAttribute("customer", c);
				}
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward
		String path = "/WEB-INF/view/chap14/view13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request param 수집 가공
		String customerName = request.getParameter("customerName");
		String contactName = request.getParameter("contactName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		
		// business logic
		String sql = "UPDATE Customers "
				+ "SET CustomerName = ?, "
				+ "    ContactName = ?, "
				+ "    Address = ?, "
				+ "    City = ?, "
				+ "    Country = ? "
				+ "WHERE CustomerID = ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setNString(1, customerName);
			pstmt.setNString(2, contactName);
			pstmt.setNString(3, address);
			pstmt.setNString(4, city);
			pstmt.setNString(5, country);
			pstmt.setInt(6, id);
			
			int cnt = pstmt.executeUpdate();
			if (cnt == 1) {
				// add attribute
				HttpSession session = request.getSession();
				session.setAttribute("message", id + "고객 정보가 수정되었습니다.");
				
			}
   		} catch (Exception e) {
   			e.printStackTrace();
   		}
		// forward
		response.sendRedirect(request.getContextPath() + "/Servlet23");
			
	}

}
