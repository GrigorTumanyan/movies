package servlets.authormodel;

import lombok.SneakyThrows;
import manager.BookManager;
import manager.MoviesManager;
import model.Author;
import model.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class SearchAuthorServlet extends HttpServlet {

    @SneakyThrows
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MoviesManager moviesManager = new MoviesManager();
        BookManager bookManager = new BookManager();
        String author = req.getParameter("author");
        String authorBook = req.getParameter("book");
        Author searchAuthor = moviesManager.searchAuthor(author, authorBook);
        List<Book> searchBook = bookManager.searchBook(authorBook, searchAuthor.getId());
        req.getSession().setAttribute("search", searchAuthor);
        req.getSession().setAttribute("searchBook", searchBook);
        resp.sendRedirect("/searchPage");


    }
}
