<%@ page import="model.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 19.01.2021
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleted book</title>
</head>
<body>
<%
    List<Book> books = (List<Book>) session.getAttribute("books");
    String authorId = (String) session.getAttribute("authorId");
%>
<button onclick="window.location.href='/homepage'">Home</button>
<br>
<br>

<form method="get" action="deletedBook">

    <label for="book">Choose a book:</label>
    <select id="book" name="bookId">
        <%
            for (Book book : books) {
                if (Integer.parseInt(authorId) == book.getAuthor_id()) {
        %>
            <option value=<%=book.getId()%>><%=book.getName()%></option>
            <%}%>
            <%}%>
    </select>
        <br><br>

    <input type="submit">
</form>
</body>
</html>
