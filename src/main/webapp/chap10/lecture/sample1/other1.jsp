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
	<%
	String name = (String) session.getAttribute("userName");		// main에서 등록된 이름을 계속 가져옴
	if (name == null) {
		name = "guest";
	}
	%>
	
	<h1><%= name %>님이 other1페이지 사용중</h1>
</body>
</html>