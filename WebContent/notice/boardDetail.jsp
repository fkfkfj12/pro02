<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>공지사항 상세보기</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div>
<h2>공지사항 상세보기</h2>
	<table class="table table-dark">
		<tbody>
			<tr>
				<th>번호</th>
				<td><%=vo.getNotiNo() %></td>
				<th>제목</th>
				<td><%=vo.getTitle() %></td>
				<th>내용</th>
				<td><%=vo.getContent() %></td>
				<th>작성자</th>
				<td><%=vo.getAuthor() %></td>
				<th>작성일시</th>
				<td><%=vo.getResDate() %></td>
				
		</tbody>
	</table>
	<div class="btn-group">
		<a href="GetBoardListCtrl" class="btn btn-danger">목록으로</a>
		<a href="DeleteBoardCtrl?notiNo=<%=vo.getNotiNo() %>" class="btn btn-primary">글 삭제</a>
		<a href="UpdateBoardCtrl?notiNo=<%=vo.getNotiNo() %>" class="btn btn-danger">글 수정</a>
	</div>
</div>
</body>
</html>