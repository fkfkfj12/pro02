package kr.co.myshop.ctrl;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateBoardProCtrl
 */
@WebServlet("/UpdateBoardProCtrl")
public class UpdateBoardProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String DRIVER="com.mysql.cj.jdbc.Driver";
	private static final String URL="jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/seoul";
	private static final String USER="root";
	private static final String PASS="a1234";
	String sql = "";
	int cnt = 0;
	   
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int notino = Integer.parseInt(request.getParameter("notino"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		try{
			Class.forName(DRIVER);
			sql = "update notice set title=?,content=? where notino=?";
			Connection con = DriverManager.getConnection(URL, USER, PASS);
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setInt(3, notino);
			cnt = pstmt.executeUpdate();
			if(cnt>=1){
				response.sendRedirect("GetBoardListCtrl");
			} else {
				response.sendRedirect("./notice/insertBoard.jsp");
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}