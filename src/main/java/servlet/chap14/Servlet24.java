package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;
import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet34
 */
@WebServlet("/Servlet24")
public class Servlet24 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet24() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1
		String keyword = request.getParameter("keyword");
		
		if (keyword == null) {
			keyword = "";
		}
		
		// 2
		keyword = "%" + keyword + "%";
		
		
		// 3
		String sql = "SELECT LastName, FirstName "
				+ "FROM Employees "
				+ "WHERE LastName LIKE ? "
				+ "OR FirstName LIKE ? ";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				// rs에서 데이터 꺼내고
				List<Employee> list = new ArrayList<>();
				while (rs.next()) {
					Employee e = new Employee();
					e.setFirstName(rs.getString("firstName"));
					e.setLastName(rs.getNString("lastName"));
					
					list.add(e);
				}
				
				// attribute 추가
				request.setAttribute("employeeList", list); // view에서 사용하는 attribute명과 같음
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 5
		String path = "/WEB-INF/view/chap14/view05.jsp";
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
