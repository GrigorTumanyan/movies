package servlets.authormodel;

import lombok.SneakyThrows;
import manager.AuthorManager;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String authorName = req.getParameter("authorName");
            String authorLastName = req.getParameter("authorLastName");
            AuthorManager authorManager = new AuthorManager();
            authorManager.addAuthor(new Author(authorName, authorLastName));
            resp.sendRedirect("/getAllAuthors");


    }


}
