<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset="UTF-8">
<title>회원가입</title>
</head>

<body>
<div>
	<form>
		<table>
			<tbody>
			<tr>
				<th><label for="cusId">아이디</label></th>
				<td><input type="text" name="cusId" id="cusId" required placeholder="제목 입력"></td>
			</tr>
			<tr>
				<th><label for="cusPw">비밀번호</label></th>
				<td><input type="password" name="cusPw" id="cusPw" required placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<th><label for="cusPw2">비밀번호 확인</label></th>
				<td><input type="password" name="cusPw2" id="cusPw2" required placeholder="비밀번호 확인"></td>
			</tr>
			<tr>
				<th><label for="cusName">이름</label></th>
				<td><input type="text" name="cusName" id="cusName" placeholder="이름 입력"></td>
			</tr>
			<tr>
				<th><label for="address">주소</label></th>
				<td><input type="text" name="address" id="address" ></td>
			</tr>
			<tr>
				<th><label for="tel">전화번호</label></th>
				<td><input type="tel" name="tel" id="tel" ></td>
			</tr>
			</tbody>
		</table>
		
	</form>
</div>
</body>
</html>

