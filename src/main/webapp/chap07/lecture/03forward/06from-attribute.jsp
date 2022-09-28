<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("song", "gogogo");				/* request.setAttribute(String s, Object o); */
%>



<jsp:forward page="06to-attribute.jsp"></jsp:forward>