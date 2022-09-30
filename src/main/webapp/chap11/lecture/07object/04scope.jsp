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

	<%
	pageContext.setAttribute("myName", "유재석");
	request.setAttribute("myName", "김종국");
	
	pageContext.setAttribute("yourName", "강호동");
	request.setAttribute("99name", "지석진");
	%>
	
	<p>1. ${myName }</p>
	<p>2. ${requestScope.myName }</p>
	<p>3. ${yourName }</p>
	<p>4. ${requestScope["99name"]}</p>
</body>
</html>