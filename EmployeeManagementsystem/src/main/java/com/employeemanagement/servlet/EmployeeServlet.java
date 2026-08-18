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

@WebServlet("/employees")
public class EmployeeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private EmployeeDAO employeeDAO;

    @Override
    public void init() throws ServletException {
        employeeDAO = new EmployeeDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        // EDIT
        if ("edit".equals(action)) {

            int employeeId = Integer.parseInt(
                    request.getParameter("id")
            );

            Employee employee =
                    employeeDAO.getEmployeeById(employeeId);

            request.setAttribute("employee", employee);

            request.getRequestDispatcher("/edit-employee.jsp")
                   .forward(request, response);

        }

        // DELETE
        else if ("delete".equals(action)) {

            int employeeId = Integer.parseInt(
                    request.getParameter("id")
            );

            boolean result =
                    employeeDAO.deleteEmployee(employeeId);

            if (result) {
                response.sendRedirect(
                        request.getContextPath() + "/employees"
                );
            } else {
                request.setAttribute(
                        "errorMessage",
                        "Employee deletion failed!"
                );

                showAllEmployees(request, response);
            }

        }

        // SEARCH
        else if (request.getParameter("search") != null) {

            String name = request.getParameter("search");

            List<Employee> employees =
                    employeeDAO.searchEmployees(name);

            request.setAttribute("employees", employees);

            request.getRequestDispatcher("/Employee.jsp")
                   .forward(request, response);

        }

        // DISPLAY ALL
        else {
            showAllEmployees(request, response);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        String employeeId =
                request.getParameter("employeeId");

        String name =
                request.getParameter("name");

        String email =
                request.getParameter("email");

        String phone =
                request.getParameter("phone");

        String department =
                request.getParameter("department");

        String salaryValue =
                request.getParameter("salary");

        String joiningDate =
                request.getParameter("joiningDate");

        String status =
                request.getParameter("status");


        double salary = Double.parseDouble(salaryValue);

        Employee employee;


        // UPDATE
        if (employeeId != null && !employeeId.isEmpty()) {

            int id = Integer.parseInt(employeeId);

            employee = new Employee(
                    id,
                    name,
                    email,
                    phone,
                    department,
                    salary,
                    joiningDate,
                    status
            );

            boolean result =
                    employeeDAO.updateEmployee(employee);

            if (result) {

                response.sendRedirect(
                        request.getContextPath() + "/employees"
                );

            } else {

                request.setAttribute(
                        "errorMessage",
                        "Employee update failed!"
                );

                request.getRequestDispatcher(
                        "/edit-employee.jsp"
                ).forward(request, response);
            }

        }

        // INSERT
        else {

            employee = new Employee(
                    0,
                    name,
                    email,
                    phone,
                    department,
                    salary,
                    joiningDate,
                    status
            );

            boolean result =
                    employeeDAO.addEmployee(employee);

            if (result) {

                response.sendRedirect(
                        request.getContextPath() + "/employees"
                );

            } else {

                request.setAttribute(
                        "errorMessage",
                        "Employee insertion failed!"
                );

                request.getRequestDispatcher(
                        "/add-employee.jsp"
                ).forward(request, response);
            }
        }
    }


    private void showAllEmployees(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        List<Employee> employees =
                employeeDAO.getAllEmployees();

        request.setAttribute("employees", employees);

        request.getRequestDispatcher("/Employee.jsp")
               .forward(request, response);
    }
}