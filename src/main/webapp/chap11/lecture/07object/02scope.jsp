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
	<h3>pageScope, requestScope, sessionScope, applicationScope</h3>
	<h3>각 영역의 attribute를 저장하고 있는 Map</h3>
	
	<%
	pageContext.setAttribute("pageAtrr1", "pageVal1");
	pageContext.setAttribute("page atrr2", "pageVal2");
	%>
	
	<p>1 ${pageAtrr1 }</p>
	<p>2 ${pageScope.pageAtrr1 }</p>
	<p>3 ${pageScope["pageAtrr1"] }</p>
	<p>4 ${pageScope["page atrr2"] }</p>
</body>
</html>