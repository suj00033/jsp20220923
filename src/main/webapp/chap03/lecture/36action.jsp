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
	String name = request.getParameter("name");
	String adress = request.getParameter("adress");
		
	%>
	
	<p><%= name %>님의 주소는 <%= adress %>입니다.</p>
</body>
</html>