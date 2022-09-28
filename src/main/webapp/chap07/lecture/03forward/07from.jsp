<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
request.setAttribute("num1", 37);
request.setAttribute("num2", 25);
%>





<jsp:forward page="07to.jsp"></jsp:forward>
