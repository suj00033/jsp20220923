<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%-- 
attribute 넣고
11to.jsp로 redirect 해서

11to.jsp에서 오류없이 null이 아닌값 출력--%>
<%
Map<String, String> map = new HashMap<>();
	map.put("song1", "gh");
	map.put("song2", "fe");
	session.setAttribute("names", map);
	
response.sendRedirect("11to.jsp");
	
%>