package com.restaurant.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import com.restaurant.model.bean.User;
import com.restaurant.service.ResService;

public class LoginServlet extends HttpServlet {

    private ResService service = new ResService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = service.authenticateUser(username, password);

        if (user != null) {
            req.getSession().setAttribute("user", user);
            resp.sendRedirect("listItems.jsp");
        } else {
            req.setAttribute("error", "Sai tài khoản hoặc mật khẩu!");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}
