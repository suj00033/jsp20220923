<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// 03to.jsp로 다시 요청해라
response.sendRedirect("03to.jsp");			// forward와 다르게 두번째 요청이 주소창에 흔적이 남는다.
%>