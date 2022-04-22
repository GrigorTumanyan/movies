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

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MoviesManager moviesManager = new MoviesManager();
        List<Movie> descMovie = moviesManager.descMovie();
        req.getSession().setAttribute("descMovie",descMovie);
        req.getRequestDispatcher("WEB-INF/index.jsp").forward(req,resp);

    }
}
