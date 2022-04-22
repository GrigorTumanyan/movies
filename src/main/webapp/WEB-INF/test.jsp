<%--
  Created by IntelliJ IDEA.
  User: GRIGOR
  Date: 12.02.2021
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<c:forEach var="nextMovie" items="${newMovie}">
    <h3><a>${nextMovie.id}</a></h3>
</c:forEach>

</body>
</html>
