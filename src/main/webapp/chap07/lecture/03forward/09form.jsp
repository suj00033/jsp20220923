<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
/* Map<String, String> map = Map.of("trump", "newyork", "donald", "chicago"); */
/* request.setAttribute("address", map); */
Map<String, String> map = new HashMap<>();
	map.put("donald", "chicago");
	map.put("trump", "new york");
	request.setAttribute("address", map);
%>



<jsp:forward page="09to.jsp"></jsp:forward>