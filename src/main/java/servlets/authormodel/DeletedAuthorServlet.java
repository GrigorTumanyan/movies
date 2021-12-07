package servlets.authormodel;

import lombok.SneakyThrows;
import manager.MoviesManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeletedAuthorServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String authorId = req.getParameter("authorId");
            MoviesManager moviesManager = new MoviesManager();
            moviesManager.deleteAuthor(Integer.parseInt(authorId));
            resp.sendRedirect("/getAllAuthors");

    }
}
