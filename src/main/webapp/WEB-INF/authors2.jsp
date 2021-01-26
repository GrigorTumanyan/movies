<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page import="model.User" %><%--
  Created by IntelliJ IDEA.
  User: Levon
  Date: 19.01.2021
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    if (request.getSession().getAttribute("user") == null) {
        response.sendRedirect("/404error");
        return;
    }
    List<Author> authors = (List<Author>) session.getAttribute("authors");
    User user = (User)session.getAttribute("user");
%>
<p> Welcome <%= user.getName()%> <%= user.getSurname()%></p>
<form method="get" action="exitServlet">

    <button type="submit" > EXIT </button>
</form>
<table border="1" width:100%>
    <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Add Author</th>
        <th>Add Book</th>
        <th>Update</th>
        <th>Delete</th>
        <th>Delete Book</th>
    </tr>
    <%for (Author author : authors) { %>
    <tr>
        <td><%=author.getName()%></td>
        <td><%=author.getSurname()%></td>
        <td><a href="addAuthors"><img src="https://www.pngitem.com/pimgs/m/541-5415532_add-friend-new-user-logo-png-transparent-png.png" width="20" height="20"></a> </td>
        <td><a href="addBookServlet?authorId=<%=author.getId()%>"><img src="https://cdn.iconscout.com/icon/premium/png-512-thumb/add-book-10-800521.png" width="20" height="20" ></a> </td>
        <td><a href="updateAuthor?authorId=<%=author.getId()%>"><img src="https://image.flaticon.com/icons/png/512/84/84380.png" width="20" height="20" ></a> </td>
        <td><a href="deletedAuthor?authorId=<%=author.getId()%>"><img src="https://icon-library.com/images/x-icon-png/x-icon-png-25.jpg" width="20" height="20"></a> </td>
        <td><a href="getBooks?authorId=<%=author.getId()%>"><img src="https://cdn.iconscout.com/icon/premium/png-256-thumb/delete-book-8-800445.png" width="20" height="20"></a> </td>
    </tr>
    <%}%>

</table>
</body>
</html>
