<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파라미터</h1>
<%
String val1 = request.getParameter("q");	
String val2 = request.getParameter("w");
%>

<p><%= val1 %></p>		<!-- 중복으로 넣고 싶을때는 &을 붙인다 -->
<p><%= val2 %></p>		<!-- jsp?q=korea & w=bts -->



</body>
</html>