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

	<%-- null이 출력되지 않도록 03from.jsp 요청보내고
		 03from.jsp에서 03to.jsp로 포워드하는 코드 작성 --%>
	주소 : <%= request.getParameter("adress") %> <br>
	이메일 : <%= request.getParameter("email") %> 
	


</body>
</html>