<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// session에 attribute 넣기

session.setAttribute("num1", 50);
session.setAttribute("num2", 30);

response.sendRedirect("09to.jsp");
%>