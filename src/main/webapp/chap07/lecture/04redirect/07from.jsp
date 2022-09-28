<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String src = "서울";
String str = URLEncoder.encode(src, "utf-8");		// 한글 적용하고싶을때는 encode를 이용해야함

response.sendRedirect("07to.jsp?address=" + str);
%>