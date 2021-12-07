package servlets.authormodel;

import lombok.SneakyThrows;
import manager.MoviesManager;
import model.Author;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateAuthorServlet extends HttpServlet {


    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
            String authorId = req.getParameter("authorId");

            MoviesManager moviesManager = new MoviesManager();
            Author author = moviesManager.getAuthorById(Integer.parseInt(authorId));
            if (author != null) {
                req.setAttribute("author", author);
            }

            req.getRequestDispatcher("/updateAuthors").forward(req, resp);

    }

}
