<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="left"%>
<%@ attribute name="right"%>
<%@ attribute name="active"%>

<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach var="page" begin="${left }" end="${right }">
    <li class="page-item ${page eq active ? 'active' : '' }"><a class="page-link" href="#">${page }</a></li>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>