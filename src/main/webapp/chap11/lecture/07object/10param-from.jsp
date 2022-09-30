<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제</title>
</head>
<body>
	<form action="10param-to.jsp" method="post">
		이메일 <input type="text" name="email"> <br>
		전화번호 <input type="number" name="phone"> <br>
		상품 <input type="text" name="product"> <br>
	<input type="submit" value="전송">
	</form>
</body>
</html>