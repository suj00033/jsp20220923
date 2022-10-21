package servlet.chap14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.chap14.ProductDao;
import domain.chap14.Product;

/**
 * Servlet implementation class Servlet33
 */
@WebServlet("/Servlet33")
public class Servlet33 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ProductDao productDao; // Servlet33은 ProductDao.java에 의존하고있음
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet33() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. request param 수집
		String idParam = request.getParameter("id");
		// 2. request param 가공
		int id = Integer.parseInt(idParam);
		
		// 3. business logic 실행
			// connection 얻기
			// sql 실행
			// result set 처리
			// 과정을 다른곳에서 처리할 예정(ProductDao.java에서)
		String productName = productDao.getProductDaoNameById(id, getServletContext());  // Data Access Object
		
		// 4. add attribute (결과처리)
		request.setAttribute("name", productName);
		// 5. forward / redirect
		String path = "/WEB-INF/view/chap14/view14.jsp";
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
