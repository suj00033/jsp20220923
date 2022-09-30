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
	<%
	java.util.List<String> l = java.util.List.of("iron", "cap", "widow");
	
	request.setAttribute("attr1", l);
	request.setAttribute("attr2", 0);
	request.setAttribute("a", 1);
	request.setAttribute("z", 2);
	request.setAttribute("abc", "2");
	// request.setAttribute("def", "two");
	%>
	
	<p>${attr1[0] }</p>        <%-- iron --%>
	
	<p>${attr1[atttr2] }</p>   <%-- iron , attr1이라는 리스트의 0자리값이라는 뜻--%>
	<p>${attr1[1] }</p> 
	<p>${attr1[a] }</p> 
	<p>${attr1[z] }</p>        <%-- z가 배열2이라는 의미를 갖음 --%>
	<p>${attr1[abc] }</p>       <%-- widow , "2"가 int형으로 전환 --%>
	<%-- request.setAttribute("def", "two"); 에서 "two"는 int형으로 전환이 안되서 예외처리가 뜸 --%>

</body>
</html>