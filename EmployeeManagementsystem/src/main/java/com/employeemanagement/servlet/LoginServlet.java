package com.employeemanagement.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employeemanagement.dao.AdminDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String username =
                request.getParameter("username");

        String password =
                request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        boolean result =
                dao.login(username, password);

        if (result) {

            HttpSession session =
                    request.getSession();

            session.setAttribute("username", username);

            response.sendRedirect("dashboard");

        } else {

            response.getWriter()
                    .println("Invalid username or password!");
        }
    }
}