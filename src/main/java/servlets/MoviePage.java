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
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@WebServlet("/moviePage")
public class MoviePage extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idMovie = req.getParameter("idMovie");
        MoviesManager moviesManager = new MoviesManager();
        Movie movieById = moviesManager.getMovieById(Integer.parseInt(idMovie));
        List<Movie> upNext = moviesManager.upNextMovie(idMovie);
        req.getSession().setAttribute("movie", movieById);
        req.getSession().setAttribute("upNext", upNext);
        req.getRequestDispatcher("WEB-INF/single.jsp").forward(req, resp);
    }
}

//        Movie movieById = moviesManager.getMovieById(Integer.parseInt(idMovie));
//        List<Movie> allMovie = moviesManager.getAllMovie();
//        List<Movie> upNext = new LinkedList<>();
//        if (allMovie.size()  >= Integer.parseInt(idMovie) + 5) {
//            for (int i = Integer.parseInt(idMovie); i < allMovie.size(); i++) {
//                if (allMovie.get(i).getId() != movieById.getId() && upNext.size() < 5) {
//                    upNext.add(allMovie.get(i));
//                }
//            }
//        }else {
//            for (int i = allMovie.size() - 1; i > Integer.parseInt(idMovie) - 7; i--) {
//                if (allMovie.get(i).getId() != movieById.getId() && upNext.size() < 5) {
//                    upNext.add(allMovie.get(i));
//                }
//            }
//        }
//       for (Movie movie : allMovie) {
//            if (movie.getId()!=movieById.getId()){
//                upNext.add(movie);
//            }
//        }

