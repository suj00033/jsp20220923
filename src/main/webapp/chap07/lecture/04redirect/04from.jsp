n<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	response.sendRedirect("04to.jsp");			// 첫번째 요청과 두번째 요청이 다르므로 반응x
%>