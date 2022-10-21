package dao.chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;

public class ProductDao {
	
	public String getProductDaoNameById(int id, ServletContext app) {
		String sql = "SELECT ProductName FROM Products WHERE ProductID = ? ";
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setInt(1, id);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					return rs.getString(1);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return ""; // return rs.getString(1); 하지않으면 빈스트링으로
	}
}
