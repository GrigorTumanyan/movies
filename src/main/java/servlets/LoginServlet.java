package servlets;

import lombok.SneakyThrows;
import manager.UserManager;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @SneakyThrows
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        UserManager userManager = new UserManager();
        User user = userManager.userLogin(email, password);
        if (user != null){
            req.getSession().setAttribute("user", user);
            req.getRequestDispatcher("/").forward(req, resp);
        }else{
            resp.sendRedirect("/");
        }





    }
}
