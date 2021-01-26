<%@ page import="model.Author" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 19.01.2021
  Time: 00:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%--%>
<%--    List<Author> authors = (List<Author>) session.getAttribute("authors");--%>
<%--%>--%>
<%
    if (request.getSession().getAttribute("user") == null) {
        response.sendRedirect("/404error");
        return;
    }
%>
<%
    Author author = (Author) request.getAttribute("author");
%>
<button onclick="window.location.href='/homepage'">Home</button>
<br>
<br>
<%--<form method="post" action="addBook">--%>
<%--    Book Name:<input type="text" name="bookName" style=position:absolute;left:10%;>--%>
<%--    <br><br>--%>
<%--    Author Name:<input type="text" name="authorName" style=position:absolute;left:10%;>--%>
<%--    <br><br>--%>
<%--    Author Last Name:<input type="text" name="authorLastName" style=position:absolute;left:10%;>--%>
<%--    <br><br>--%>
<%--    <input type="submit" value="Submit for add book" style=position:absolute;left:5%;>--%>
<%--</form>--%>

<form method="post" action="addBook">

    <input type="hidden"  name="authorId" value=<%=author.getId()%>><br>
    Book Name: <input type="text" name="bookName" style=position:absolute;left:10%;>
    <br><br>

    <input type="submit">
</form>
</body>
</html>
