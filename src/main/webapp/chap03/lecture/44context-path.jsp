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
	<h1>context path</h1>
	
<!-- 	<form action="/jsp20220923/chap03/lecture/44absolute-path.jsp"> -->
	<form action="<%= request.getContextPath() %>/chap03/lecture/44context-path.jsp">  
	<%-- request.getContextPath() : 프로젝트 Context path(프로젝트 path)명을 반환, 소스코드가 바껴도 경로를 제대로 찾을수있음 --%>
		<input type="text" name="adress">
		<input type="submit" value="전송">
	
	</form>
	
	<%= request.getParameter("adress") %>

</body>
</html>