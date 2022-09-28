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
	int a = 0;
	int b= 3;
	int c = b / a;					// ArithmeticException 뜸(0으로 못나눔) > 오류 500번 뜸 > 서버 문제라는 뜻
	%>
</body>
</html>