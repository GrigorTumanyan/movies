package servlets;

import db.DBConnectionProvider;
import lombok.SneakyThrows;
import manager.MoviesManager;
import model.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
//ServletRequestListener
//        ServletRequestAttributeListener
//        ServletContextListener
//        ServletContextAttributeListener
//        HttpSessionListener
//        HttpSessionAttributeListener
//        HttpSessionBindingListener
//        HttpSessionActivationListener

@WebServlet("/test")
public class TestServlet extends HttpServlet  {
    @SneakyThrows
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String moviesName = req.getParameter("moviesName");
        MoviesManager moviesManager = new MoviesManager();
//        List<String> strings = moviesManager.searchMovie(moviesName);
//        System.out.println(strings);

    }




//    @Override
//    public void mouseClicked(MouseEvent e) {
//        System.out.println(e.getClickCount());
//
//    }
}
