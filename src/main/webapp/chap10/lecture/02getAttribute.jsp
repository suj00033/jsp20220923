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
	<h1>세션에서 꺼낸 임의의 수</h1>
	<h1><%= session.getAttribute("random number") %></h1>  <!-- 
																같은 브라우저에서 온 요청이기 때문에 01.jsp과 같은 흐름이 흐른다 
																다른 브라우저에서는 출력되지않음
															-->
																
</body>
</html>