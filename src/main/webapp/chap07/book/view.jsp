<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")) {
		viewPageURI = "a.jsp";
	} else if(code.equals("B")) {
		viewPageURI = "b.jsp";
	} else if(code.equals("C")) {
		viewPageURI = "c.jsp";
	}
%>
<jsp:forward page = "<%= viewPageURI %>" />

<!-- view가 할일을 a,b,c로 넘겨줌 -->
<!-- forward 서버 안에서 일어난 일이므로 클라이언트는 알지못함(주소창에 안뜸) -->