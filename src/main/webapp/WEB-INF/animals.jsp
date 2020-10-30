<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Geoffrey
  Date: 30/10/2020
  Time: 08:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adoptables animals</title>
</head>
<body>
    <c:forEach var="nom" items="${nom}">
        <li><c:out value="${nom}"></c:out></li>
    </c:forEach>
</body>
</html>
