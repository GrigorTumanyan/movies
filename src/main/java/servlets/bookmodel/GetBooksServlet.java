//package servlets.bookmodel;
//
//import lombok.SneakyThrows;
//import manager.BookManager;
//import model.Book;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.util.List;
//
//public class GetBooksServlet extends HttpServlet {
//
//    @SneakyThrows
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        if (req.getSession().getAttribute("user") == null) {
//            resp.sendRedirect("/404error");
//            return;
//        }
//            String authorId = req.getParameter("authorId");
//            BookManager bookManager = new BookManager();
//            List<Book> allBooks = bookManager.getAllBooks();
//            req.getSession().setAttribute("books", allBooks);
//            req.getSession().setAttribute("authorId", authorId);
//            //        req.getRequestDispatcher("/addBook").forward(req,resp);
//
//
//            resp.sendRedirect("/deletedBooks");
//        }
//
//
//
//}
