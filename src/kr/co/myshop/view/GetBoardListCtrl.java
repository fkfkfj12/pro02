package kr.co.myshop.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.myshop.vo.Notice;


@WebServlet("/GetBoardListCtrl")
public class GetBoardListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final String Driver = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/myshop1?serverTimezone=Asia/Seoul";
    private static final String USER = "root";
    private static final String PASS = "a1234";
    String sql = "";
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	try{
		Class.forName(Driver);
		sql = "select * from notice order by notino desc";
		Connection con = DriverManager.getConnection(URL, USER, PASS);
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		List<Notice> notiList = new ArrayList<Notice>();
		while(rs.next()){
			Notice vo = new Notice();
			vo.setNotiNo(rs.getInt("notino"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setAuthor(rs.getString("author"));
			vo.setResDate(rs.getString("resdate"));
			notiList.add(vo);
	}
		request.setAttribute("notiList", notiList);
		
		//notice/boardList.jsp 에 포워딩
		RequestDispatcher view = request.getRequestDispatcher("./notice/boardList.jsp");
		view.forward(request, response);
		
		rs.close();
		pstmt.close();
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	}	
}
}