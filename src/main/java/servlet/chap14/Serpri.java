package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.util.Date;
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

import domain.chap14.Employee;
import domain.chap14.Order;

/**
 * Servlet implementation class Serpri
 */
@WebServlet("/Serpri")
public class Serpri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Serpri() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT OrderDate FROM Orders WHERE OrderDate BETWEEN '1996-08-01' AND '1996-08-31'";
		
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			
			List<Order> list = new ArrayList<>();
			
			while (rs.next()) {
				Order o = new Order();
				o.setOrderId(rs.getInt(1));
				o.setCustomerId(rs.getInt(2));
				o.setOrderDate(rs.getNString(3).toString());
				
				list.add(o);
			}
			request.setAttribute("orderDate", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward / redirect
		String path = "/WEB-INF/view/chap14/pri.jsp";
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
