package com.employeemanagement.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employeemanagement.dao.EmployeeDAO;
import com.employeemanagement.model.Employee;

@WebServlet("/dashboard")
public class DashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        EmployeeDAO dao = new EmployeeDAO();

        List<Employee> employees =
                dao.getAllEmployees();

        int totalEmployees = employees.size();

        int activeEmployees = 0;

        for (Employee employee : employees) {

            if ("Active".equalsIgnoreCase(employee.getStatus())) {
                activeEmployees++;
            }
        }

        request.setAttribute("totalEmployees", totalEmployees);
        request.setAttribute("activeEmployees", activeEmployees);

        request.getRequestDispatcher("dashboard.jsp")
               .forward(request, response);
    }
}