//package servlets.bookmodel;
//
//import lombok.SneakyThrows;
//import manager.BookManager;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//public class DeletedBookServlet extends HttpServlet {
//    @SneakyThrows
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  {
//        if (req.getSession().getAttribute("user") == null) {
//            resp.sendRedirect("/404error");
//            return;
//        }
//            String bookId = req.getParameter("bookId");
//
//            BookManager bookManager = new BookManager();
//            bookManager.deleteBook(Integer.parseInt(bookId));
//            resp.sendRedirect("/admin");
//
//    }
//}
