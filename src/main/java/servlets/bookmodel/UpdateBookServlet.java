package servlets.bookmodel;

import lombok.SneakyThrows;
import manager.BookManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateBookServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/404error");
            return;
        }
            String authorName = req.getParameter("authorName");
            String authorSurName = req.getParameter("authorSurName");
            String oldBookName = req.getParameter("oldBookName");
            String newBookName = req.getParameter("newBookName");
            BookManager bookManager = new BookManager();
            bookManager.updateBook(authorName, authorSurName, oldBookName, newBookName);

    }
}
