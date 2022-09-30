<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("key1", "goose");
	map.put("my name", "horse");
	map.put("1key", "cat");
	map.put("!@#", "dog");
	
	request.setAttribute("map1", map);
	pageContext.setAttribute("k", "key1");
	%>
	
	<p>${map1.key1 }</p>   <%-- goose --%>
	
	<%-- 특수문자나 공백은 [" attribute name "]를 사용 --%>
	<p>${map1["key1"] }</p> <%-- goose --%>
	<p>${map1["my name"] }</p> <%-- horse --%>
	<p>${map1["1key"] }</p>
	<p>${map1["!@#"] }</p>
	
	<p>안나옴 : ${map1[key1] }</p>
	<p>k속성 있어서 나옴 : ${map1[k] }</p>
	
	
	
	
</body>
</html>