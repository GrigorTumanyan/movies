package servlets.authormodel;

import lombok.SneakyThrows;
import manager.MoviesManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateServlet extends HttpServlet {

//    @SneakyThrows
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//
//            String authorId = req.getParameter("authorId");
//            String lastAuthorId = req.getParameter("lastAuthorId");
//            String authorName = req.getParameter("authorName");
//            String authorSurname = req.getParameter("authorSurname");
//            MoviesManager moviesManager = new MoviesManager();
//            moviesManager.updateAuthor(Integer.parseInt(lastAuthorId), Integer.parseInt(authorId), authorName, authorSurname);
//            resp.sendRedirect("/getAllAuthors");
//
//
//    }
}
