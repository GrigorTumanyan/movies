package servlets.authormodel;

import manager.MoviesManager;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BiographyServlet extends HttpServlet {
//    @Override
//    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        MoviesManager moviesManager = new MoviesManager();
//        String authorId = req.getParameter("authorId");
//        Author authorById = moviesManager.getAuthorById(Integer.parseInt(authorId));
//        String biography =authorById.getBiography();
//        req.getSession().setAttribute("biography", authorById);
//        resp.sendRedirect("/biographyPage");
//
//    }
}
