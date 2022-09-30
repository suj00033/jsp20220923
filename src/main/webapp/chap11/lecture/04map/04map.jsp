<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제</title>
</head>
<body>
	<%--
	map이라는 이름의 Map 타입 attribute 추가
	 --%>
	 <%
	 Map<String, String> map = new HashMap<>();
	 map.put("abc", "fish");
	 map.put("my key", "shark");
	 map.put("ddef", "gosh");
	 map.put("2", "tong");
	 
	 request.setAttribute("map", map);
	 pageContext.setAttribute("def", "ddef");
	 
	 %>
	 
	 
	<p>abc : ${map.abc }</p>
	<p>my key : ${map["my key"] }</p>
	<p>def : ${map[def] }</p>
	<p>2 :${map["2"] }</p>
	<p>2 :${map[2] }</p>     <%-- 출력x, list에서는 가능 --%>


</body>
</html>