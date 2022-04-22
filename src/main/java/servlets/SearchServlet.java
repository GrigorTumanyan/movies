package servlets;

import lombok.SneakyThrows;
import manager.MoviesManager;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String movieName = req.getParameter("movieName");
        MoviesManager moviesManager = new MoviesManager();
        List<Movie> movies = moviesManager.searchMovie(movieName);
        req.getSession().setAttribute("movies", movies);
        req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req,resp);

    }
}
