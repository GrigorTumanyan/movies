<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 20.01.2021
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<%
    Author author = (Author) request.getAttribute("author");
%>
<button onclick="window.location.href='/homepage'">Home</button>
<form method="post" action="update">

    <input type="hidden"  name="lastAuthorId" value=<%=author.getId()%>><br>

    <label for="authorId">Author Id:</label><br>
    <input type="text" id="authorId" name="authorId" value=<%=author.getId()%>><br>

    <label for="authorName">First name:</label><br>
    <input type="text" id="authorName" name="authorName" value=<%=author.getName()%>><br>

    <label for="authorSurname">Last name:</label><br>
    <input type="text" id="authorSurname" name="authorSurname" value=<%=author.getSurname()%>><br><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
