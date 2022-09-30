<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scope 객체들 (chap5 책 p132)</h1>
	<h3>pageContext, request, session, application</h3>
	
	<%-- p132 
	page 영역 (기본객체 pageContext) : 하나의 jsp페이지를 처리할때 사용되는 영역
					  		    type : pageContext
	
	request 영역 (기본객체 request)  : 하나의 HTTP 요청을 처리할때 사용되는 영역
					   			type : HttpServletRequest
	
	session 영역 (기본 객체 session) : 하나의 웹 브라우저와 관련된 영역
					   			type : HttpSession
	
	application 영역 (기본객체 application) : 하나의 웹 어플리케이션과 관련된 영역
								type : 

	--%>
	
	<%
	pageContext.setAttribute("page1", "page attr1");
	request.setAttribute("req1", "req attr1");
	session.setAttribute("sess1", "sess attr1");
	application.setAttribute("app1", "app attr1");
	%>
</body>
</html>