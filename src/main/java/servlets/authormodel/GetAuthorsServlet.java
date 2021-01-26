package servlets.authormodel;

import lombok.SneakyThrows;
import manager.AuthorManager;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetAuthorsServlet extends HttpServlet {

    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            AuthorManager authorManager = new AuthorManager();
            List<Author> allAuthors = authorManager.getAllAuthors();
            req.getSession().setAttribute("authors", allAuthors);
            resp.sendRedirect("/home");

    }
}
