<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrMap" %>

<div>
	<c:forEach items="${attrMap }" var="attr">
		<p>${attr.key } : ${attr.value }</p>
	</c:forEach>
</div>