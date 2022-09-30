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
	list라는 이름의 java.util.List 타입 객체를 attribute 넣는 코드
	필요하면 다른 attribute도 추가
	 --%>
	 
	 <%
	 List<String> li = new ArrayList<>();
	 li.add("dog");
	 li.add("goose");
	 li.add("cat");
	 
	 request.setAttribute("list", li);
	 request.setAttribute("k", 1);
	 request.setAttribute("x", "2");
	 
	 %>


	<p>${list[0] }</p>
	<p>${list[k] }</p>
	<p>${list[x] }</p>

</body>
</html>