package servlets.authormodel;

import lombok.SneakyThrows;
import manager.MoviesManager;
import model.Author;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String movieName = req.getParameter("authorName");
            String genres = req.getParameter("authorLastName");
            MoviesManager moviesManager = new MoviesManager();
            moviesManager.addMovie(new Movie(movieName, genres));
            resp.sendRedirect("/getAllAuthors");


    }


}
