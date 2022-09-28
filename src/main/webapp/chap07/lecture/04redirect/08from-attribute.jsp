<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
// request attribute
request.setAttribute("name1", "goose");

// session attribute(type: HttpSession)
session.setAttribute("name2", "tiger");
response.sendRedirect("08to-attribute.jsp");
%>