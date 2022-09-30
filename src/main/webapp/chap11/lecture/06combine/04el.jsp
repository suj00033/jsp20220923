<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsp20220923.chap07.*, java.util.*" %> 
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예제</title>
</head>
<body>
	<%-- 
	두개의 entry를 가진
	Map<String, Person> 타입 객체를 attribute에 넣고
	entry의 value들의 프로퍼티 el로 출력하는 코드 작성 --%>
	<%
	Map<String, Person> map = new HashMap();
	request.setAttribute("persons", map);
	
	Person p1 = new Person();
	Person p2 = new Person();
	
	p1.setName("You");
	p1.setAge(67);
	p1.setAlive(true);
	
	p2.setName("Lee");
	p2.setAge(45);
	p2.setAlive(false);
	
	map.put("person1", p1);
	map.put("person2", p2);
	
	%>
	
	<h3>person1</h3>
	<p>${persons.person1.name}</p>
	<p>${persons.person1.age}</p>
	<p>${persons.person1.alive}</p>

	<h3>person2</h3>
	<p>${persons.person2.name}</p>
	<p>${persons.person2.age}</p>
	<p>${persons.person2.alive}</p>
	
	
	
</body>
</html>