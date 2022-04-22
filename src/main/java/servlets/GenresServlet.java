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
import java.util.LinkedList;
import java.util.List;

@WebServlet("/genresServlet")
public class GenresServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String genres = req.getParameter("genres");
//        String page = req.getParameter("page");
        List<Movie> finishGenres = new LinkedList<>();
        MoviesManager moviesManager = new MoviesManager();
        List<Movie> genresMovie = moviesManager.getAllMovie();
        for (Movie movie : genresMovie) {
            for (String findGenres : movie.getGenres()) {
                if (genres.equals(findGenres)) {
                    finishGenres.add(movie);
                }
            }
        }
        req.getSession().setAttribute("movies", finishGenres);
        req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
    }
}


//        switch (genres) {
//            case 1:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 2:
//                req.getRequestDispatcher("WEB-INF/contact.jsp").forward(req, resp);
//                break;
//            case 3:
//                req.getRequestDispatcher("WEB-INF/faq.jsp").forward(req, resp);
//                break;
//            case 4:
//                req.getRequestDispatcher("WEB-INF/comedy.jsp").forward(req, resp);
//                break;
//            case 5:
//                req.getRequestDispatcher("WEB-INF/horror.jsp").forward(req, resp);
//                break;
//            case 6:
//                req.getRequestDispatcher("WEB-INF/icons.jsp").forward(req, resp);
//                break;
//            case 7:
//                req.getRequestDispatcher("WEB-INF/list.jsp").forward(req, resp);
//                break;
//            case 8:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 9:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 10:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 11:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 12:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 13:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 14:
//                req.getRequestDispatcher("WEB-INF/genres.jsp").forward(req, resp);
//                break;
//            case 15:
//                break;
//
//        }


