package servlets.bookmodel;

import lombok.SneakyThrows;
import manager.BookManager;
import model.Book;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BookServlet extends HttpServlet {

    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/404error");
            return;
        }
            String bookName = req.getParameter("bookName");
            int authorId = Integer.parseInt(req.getParameter("authorId"));
            BookManager bookManager = new BookManager();
            bookManager.addBook(new Book(bookName), authorId);
            resp.sendRedirect("/getAllAuthors");


    }
}
