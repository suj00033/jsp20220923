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
	<%--
	요청 url
	05main.jsp?name=jimin
	 --%>
	<div>
	메인 컨텐츠
		<p>
			name: <%= request.getParameter("name") %> 	<!-- 같은 request를 가지고 있어 같은 객체를 가지고 있다고 볼수있음 -->
		</p>	
		<p>
			age: <%= request.getParameter("age") %>
		</p>
	</div>
	
	<div>
		<jsp:include page="05sub.jsp">
			<jsp:param value="99" name="age"/>
		</jsp:include>
	</div>
	
	<div>
		sub.jsp 호출 후
		<p>
			age: <%= request.getParameter("age")%> 			<!-- 호출 후에 다시 value 리셋 -->
		</p>
	</div>
</body>
</html>