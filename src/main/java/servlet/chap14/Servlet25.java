package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet25
 */
@WebServlet("/Servlet25")
public class Servlet25 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet25() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "INSERT INTO Employees "
				+ "(LastName, FirstName, BirthDate, Photo, Notes) "
				+ "VALUES ('Lee', 'Yang', '1998-09-03', 'GHJ.pic', 'General') ";
		// connection 얻기
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				// Statement 얻기
				Statement stmt = con.createStatement();) {
		
				// query 얻기
				// ResultSet executeQuery -> select일때
				// int executeUpdate
				int cnt = stmt.executeUpdate(sql);
				
				System.out.println(cnt); // 콘솔에 흔적
		} catch (Exception e) {
			e.printStackTrace();
		} // 실행하면 콘솔에 흔적과 함께 sql Employee 테이블 추가확인
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
