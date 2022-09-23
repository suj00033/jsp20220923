<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int add(int a, int b) {
		int c = a+b;
		return c;
		}
		
	public int subtract(int a, int b) {
		int c = a-b;
		return c;
		}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트릿에서 선언부 사용하기</title>
</head>
<body>
<%
	int val = 3;
	int val2 = 9;
	
	int addRes = add(val, val2);
	int subtractRes = subtract(val, val2);
%>

<%= val %> + <%= val2 %> = <%= addRes %>
<br>
<%= val %> + <%= val2 %> = <%= subtractRes %>

</body>
</html>