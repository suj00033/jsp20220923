<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- directive : 책 p53 --%>
<%-- page, tablib, include --%>
<!--page: 디렉티브, import: 어트렉티브  -->
<%@page import="java.util.*"%>
<%@page import="java.util.stream.Stream"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 목록 출력</title>
</head>
<body>
<%
	Iterator<String> headerEnum = request.getHeaderNames().asIterator();
	while(headerEnum.hasNext()) {
		String headerName = headerEnum.next();
		String headerValue = request.getHeader(headerName);		/* scriptlet */
%>
<%= headerName %> = <%= headerValue %> <br>					<!-- expression (vscode에서 봤을때) -->
<%
}																/* scriptlet */
%>
</body>
</html>