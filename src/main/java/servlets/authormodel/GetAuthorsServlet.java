package servlets.authormodel;

import lombok.SneakyThrows;
import manager.MoviesManager;
import model.Author;
import model.Movie;
import model.User;

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

            MoviesManager moviesManager = new MoviesManager();
            List<Movie> allMovie = moviesManager.getAllMovie();
            req.getSession().setAttribute("authors", allMovie);

        User user = (User) req.getSession().getAttribute("user");
        if (user==null) {
            resp.sendRedirect("/index");
        }else {
            resp.sendRedirect("/admin");

        }
    }
}
