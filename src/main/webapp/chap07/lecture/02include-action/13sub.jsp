<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*, java.util.*"  %>

<%
	Map<String, Book> map = (Map<String, Book>) request.getAttribute("books");
%>
<%-- 아래 html에서 null이 출력되지않도록 --%>
<p><%= map.get("book1").getTitle() %> : <%= map.get("book1").getPrice() %></p>
<p><%= map.get("book2").getTitle() %> : <%= map.get("book2").getPrice() %></p>