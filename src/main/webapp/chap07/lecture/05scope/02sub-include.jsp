<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<hr>
	<h3>02sub.jsp</h3>
	<p><%= pageContext.getAttribute("page1") %></p> <%-- null --%>
	<p><%= request.getAttribute("req1") %></p> <%-- req attr1 --%>
	<p><%= session.getAttribute("sess1") %></p>
	<p><%= application.getAttribute("app1") %></p>
	<%-- sub만 호출할 경우 page와 request는 null이 나옴 --%>
<hr>