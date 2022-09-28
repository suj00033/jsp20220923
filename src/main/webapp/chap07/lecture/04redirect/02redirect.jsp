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
	<h1>02redirect.jsp</h1>
   	<%
   	// 302 응답 : 다른 곳으로 다시 요청을 보내라는 뜻
   	response.sendRedirect("http://www.daum.net");      // location 값으로 가서 다시 요청을 보내라는 뜻
   	%>
	
</body>
</html>