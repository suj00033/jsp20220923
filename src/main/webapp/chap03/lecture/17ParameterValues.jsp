<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>getParameterValues</h1>

<!-- form>(input+br)*3+input:s  -->
<form action="">
	<input type="text" name="q">
	<br>
	<input type="text" name="q">
	<br>
	<input type="text" name="q">
	<br>
	<input type="submit" value="전송">
</form>

<hr>
<%
String val1 = request.getParameter("q");			/* 파라미터명이 다 같으면 맨앞것만 리턴됨 */

%>

<p>val1: <%= val1 %></p>

<%
String[] vals = request.getParameterValues("q");	/* 파라미터의 길이를 리턴 */
if(vals != null) {
%>	
					
<p>vals 길이: <%= vals.length %></p>
<p>vals[0] <%= vals[0] %></p>
<p>vals[1] <%= vals[1] %></p>
<p>vals[2] <%= vals[2] %></p>

<%
}
%>
</body>
</html>