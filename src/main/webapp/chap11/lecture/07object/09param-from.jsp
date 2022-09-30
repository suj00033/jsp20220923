<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="09param-to.jsp" method="post">    <!-- post형식으로 입력하면 주소창에 흔적이 없음 -->
		이름 <input type="text" name="name" value="홍길동"> <br>
		주소 <input type="text" name="address" value="서울"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>