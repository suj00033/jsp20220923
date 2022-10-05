<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<%-- length 함수 --%>
	<%
	pageContext.setAttribute("arr1", List.of(3, 4, 6, 10));
	%>
	${fn:length(arr1) } <br>
	${arr1.size() } <br> <%-- 으로도 써도 됨 --%>
	
	<%
	pageContext.setAttribute("arr2", "javascript");
	%>
	${fn:length(arr2) } <br>   <%-- 문자열의 길이 --%>
	${arr2.length() } <br>
	
	<hr>
	
	<%-- split : 분리해서 배열로 --%>
	<%
	pageContext.setAttribute("arr3", "css,html,java,sql");
	%>
	${fn:split(arr3, ",")[2] } <%-- arr3을 ,기준으로 분리하겠다. --%> 
	<c:set var="langs" value="${fn:split(arr3, ',') }"></c:set>
	
	<c:forEach items="${langs }" var="lang">
		<p>${lang }</p>
	</c:forEach>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>