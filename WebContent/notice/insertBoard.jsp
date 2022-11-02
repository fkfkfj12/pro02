<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*, kr.co.myshop.vo.*" %>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>공지사항 등록</title>
</head>
<body>
<div>
<h2>공지사항 등록</h2>
<form action="../InsertBoardProCtrl" method="post">
	<table>
		<tbody>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" placeholder="제목입력" required></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" cols="80" rows="6" required></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="author" value="admin" readonly></td>
			</tr>
		</tbody>
	</table>
	<div>
		<input type="submit" value="글 등록">
		<input type="reset"  value="취소">
		<a href="../GetBoardListCtrl">목록으로</a>
	</div>
</form>
</div>
</body>
</html>