<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전송방식(method) : post</h1>
	<p>길이의 제한이 없음</p>
	<p>주소란에 노출되지 않음</p>
	
	<form action="" method="post">				<!-- method="post": 이름과 암호를 전송해도 주소창에 안보임 -->
		이름: <input type="text" name="name"> <br>	<!-- 쿼리 스트링이 보이지 않음 -->
		암호: <input type="password" name="pw"> <br>
		<input type="submit" value="가입">
	
	</form>


</body>
</html>