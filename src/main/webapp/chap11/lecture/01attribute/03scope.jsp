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
	pageContext.setAttribute("pageattr1", "pageval1");
	request.setAttribute("reattr1", "reval1");
	session.setAttribute("seattr1", "seval1");
	application.setAttribute("appttr1", "appval1");
	%>
	
	<hr>
	
	<p>${pageattr1}</p>
	<p>${reattr1}</p>
	<p>${seattr1}</p>
	<p>${appttr1}</p>
	
	<p>${ABCATTR1}</p> <%-- 없는 attribute이면 출력되지않음(null이 아님) --%>



</body>
</html>