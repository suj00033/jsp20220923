<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	request.setAttribute("attr1", "aaa");
	session.setAttribute("attr1", "bbb");
	application.setAttribute("attr1", "ccc");

%>

<jsp:forward page="03to.jsp"></jsp:forward>