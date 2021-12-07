package servlets.bookmodel;

import manager.MoviesManager;
import model.Author;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddBookServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        if (req.getSession().getAttribute("user") == null) {
//            resp.sendRedirect("/404error");
//            return;
//        }
//            String authorId = req.getParameter("authorId");
//            MoviesManager moviesManager = new MoviesManager();
//            Author author = moviesManager.getAuthorById(Integer.parseInt(authorId));
//
//            if (author != null) {
//                req.setAttribute("author", author);
//            }
//            req.getRequestDispatcher("/addBooks").forward(req, resp);
//
//    }
}
