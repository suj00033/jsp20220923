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
	map1이라는 이름의 Map객체를 attribute 넣기
	 --%>
	 <%
	 // Map<String, String> map = Map.of("x", "dog", "y", "cat", "abc", "yort");
	 Map<String, String> map = new HashMap<>();
	 map.put("x", "dog");
	 map.put("y", "cat");
	 map.put("abc", "yort");
	 // map.put("ani mal", "horse");          key에 공백 혹은 특수문자 있으면 예외처리 뜸
	 request.setAttribute("map1", map);
	 
	 %>

	<p>${map1.x }</p>
	<p>${map1.y }</p>
	<p>${map1.abc }</p>
	<%-- <p>${map1.ani mal }</p> --%>
	
</body>
</html>