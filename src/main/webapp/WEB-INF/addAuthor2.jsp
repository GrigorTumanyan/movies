<%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 19.01.2021
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<button onclick="window.location.href='/homepage'">Home</button>
<br>
<br>
<form method="post" action="addAuthor">
    AuthorName:<input type="text" name="authorName" style=position:absolute;left:10%;>
    <br><br>
    AuthorLastName:<input type="text" name="authorLastName" style=position:absolute;left:10%;>
    <br><br>
    <input type="submit" value="Submit for add author" style=position:absolute;left:5%;>
</form>


</body>
</html>
