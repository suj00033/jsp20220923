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
	<%--
	attribute에 추가하는 코드 작성 
	--%>
	
	<%
	// String[] arr2 = {"goose", "tiger", "dog"};
	
	request.setAttribute("song", new String[] {"goose", "tiger", "dog"});
	
	%>

	<hr>
	
	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>

</body>
</html>