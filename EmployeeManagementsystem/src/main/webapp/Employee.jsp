<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.employeemanagement.model.Employee" %>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>EmployeeMS | Employees</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            background: #f5f7fb;
            color: #1e293b;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            height: 70px;
            background: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 45px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.06);
        }

        .logo {
            font-size: 25px;
            font-weight: 700;
            color: #2563eb;
        }

        .logo span {
            color: #7c3aed;
        }

        .nav-links {
            display: flex;
            gap: 12px;
            align-items: center;
        }

        .nav-btn {
            text-decoration: none;
            padding: 9px 15px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .dashboard-btn {
            color: #2563eb;
            background: #eff6ff;
        }

        .dashboard-btn:hover {
            background: #2563eb;
            color: white;
        }

        .add-btn {
            color: #059669;
            background: #d1fae5;
        }

        .add-btn:hover {
            background: #059669;
            color: white;
        }

        .logout-btn {
            color: #dc2626;
            background: #fee2e2;
        }

        .logout-btn:hover {
            background: #dc2626;
            color: white;
        }


        /* ================= MAIN ================= */

        .main {
            max-width: 1400px;
            margin: 40px auto;
            padding: 0 30px;
        }


        /* ================= HEADER ================= */

        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 25px;
        }

        .page-header h1 {
            font-size: 30px;
            color: #0f172a;
            margin-bottom: 5px;
        }

        .page-header p {
            color: #64748b;
            font-size: 14px;
        }

        .add-employee {
            text-decoration: none;
            background: linear-gradient(135deg, #2563eb, #7c3aed);
            color: white;
            padding: 11px 18px;
            border-radius: 9px;
            font-size: 14px;
            font-weight: 600;
            box-shadow: 0 5px 15px rgba(37,99,235,0.20);
            transition: 0.3s;
        }

        .add-employee:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(37,99,235,0.30);
        }


        /* ================= TABLE CARD ================= */

        .table-card {
            background: white;
            border-radius: 16px;
            padding: 25px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 8px 30px rgba(15,23,42,0.06);
        }


        /* ================= SEARCH ================= */

        .toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 22px;
        }

        .search-form {
            display: flex;
            gap: 8px;
        }

        .search-input {
            width: 280px;
            height: 42px;
            padding: 0 13px;
            border: 1px solid #cbd5e1;
            border-radius: 8px;
            outline: none;
            font-family: inherit;
            font-size: 14px;
            background: #f8fafc;
        }

        .search-input:focus {
            border-color: #2563eb;
            background: white;
            box-shadow: 0 0 0 3px rgba(37,99,235,0.10);
        }

        .search-btn {
            height: 42px;
            padding: 0 18px;
            border: none;
            border-radius: 8px;
            background: #2563eb;
            color: white;
            font-family: inherit;
            font-weight: 600;
            cursor: pointer;
        }

        .search-btn:hover {
            background: #1d4ed8;
        }


        /* ================= TABLE ================= */

        .table-container {
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 950px;
        }

        thead {
            background: #f8fafc;
        }

        th {
            padding: 15px 12px;
            text-align: left;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            color: #64748b;
            border-bottom: 2px solid #e2e8f0;
        }

        td {
            padding: 16px 12px;
            font-size: 14px;
            border-bottom: 1px solid #e2e8f0;
            color: #334155;
        }

        tbody tr {
            transition: 0.2s;
        }

        tbody tr:hover {
            background: #f8fafc;
        }


        /* ================= ID ================= */

        .employee-id {
            font-weight: 700;
            color: #64748b;
        }


        /* ================= NAME ================= */

        .employee-name {
            font-weight: 600;
            color: #0f172a;
        }


        /* ================= EMAIL ================= */

        .email {
            color: #475569;
        }


        /* ================= SALARY ================= */

        .salary {
            font-weight: 600;
            color: #059669;
        }


        /* ================= STATUS ================= */

        .status {
            display: inline-block;
            padding: 5px 11px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
        }

        .active {
            background: #d1fae5;
            color: #047857;
        }

        .inactive {
            background: #fee2e2;
            color: #b91c1c;
        }


        /* ================= ACTIONS ================= */

        .actions {
            display: flex;
            gap: 8px;
        }

        .edit-btn {
            text-decoration: none;
            background: #dbeafe;
            color: #2563eb;
            padding: 7px 12px;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 600;
            transition: 0.2s;
        }

        .edit-btn:hover {
            background: #2563eb;
            color: white;
        }

        .delete-btn {
            text-decoration: none;
            background: #fee2e2;
            color: #dc2626;
            padding: 7px 12px;
            border-radius: 7px;
            font-size: 12px;
            font-weight: 600;
            transition: 0.2s;
        }

        .delete-btn:hover {
            background: #dc2626;
            color: white;
        }


        /* ================= EMPTY ================= */

        .empty {
            text-align: center;
            padding: 50px;
            color: #64748b;
        }


        /* ================= FOOTER ================= */

        .footer {
            text-align: center;
            padding: 25px;
            color: #94a3b8;
            font-size: 12px;
        }


        /* ================= MOBILE ================= */

        @media (max-width: 700px) {

            .navbar {
                padding: 0 20px;
            }

            .main {
                padding: 0 15px;
            }

            .page-header {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }

            .toolbar {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }

            .search-input {
                width: 220px;
            }

        }

    </style>

</head>


<body>


    <!-- ================= NAVBAR ================= -->

    <div class="navbar">

        <div class="logo">
            Employee<span>MS</span>
        </div>

        <div class="nav-links">

            <a href="dashboard"
               class="nav-btn dashboard-btn">
                Dashboard
            </a>

            <a href="add-employee.jsp"
               class="nav-btn add-btn">
                + Add Employee
            </a>

            <a href="logout"
               class="nav-btn logout-btn">
                Logout
            </a>

        </div>

    </div>


    <!-- ================= MAIN ================= -->

    <div class="main">


        <!-- HEADER -->

        <div class="page-header">

            <div>

                <h1>
                    Employees
                </h1>

                <p>
                    Manage all employee records in your organization.
                </p>

            </div>

            <a href="add-employee.jsp"
               class="add-employee">
                + Add Employee
            </a>

        </div>


        <!-- ================= TABLE CARD ================= -->

        <div class="table-card">


            <!-- SEARCH -->

            <div class="toolbar">

                <form action="employees"
                      method="get"
                      class="search-form">

                    <input type="text"
                           name="search"
                           class="search-input"
                           placeholder="Search employee by name...">

                    <button type="submit"
                            class="search-btn">
                        Search
                    </button>

                </form>

            </div>


            <!-- ================= TABLE ================= -->

            <div class="table-container">

                <table>

                    <thead>

                        <tr>

                            <th>ID</th>

                            <th>Name</th>

                            <th>Email</th>

                            <th>Phone</th>

                            <th>Department</th>

                            <th>Salary</th>

                            <th>Joining Date</th>

                            <th>Status</th>

                            <th>Action</th>

                        </tr>

                    </thead>


                    <tbody>

                    <%
                        List<Employee> employees =
                            (List<Employee>) request.getAttribute("employees");

                        if (employees != null && !employees.isEmpty()) {

                            for (Employee employee : employees) {
                    %>

                        <tr>

                            <td>
                                <span class="employee-id">
                                    <%= employee.getEmployeeId() %>
                                </span>
                            </td>

                            <td>
                                <span class="employee-name">
                                    <%= employee.getName() %>
                                </span>
                            </td>

                            <td>
                                <span class="email">
                                    <%= employee.getEmail() %>
                                </span>
                            </td>

                            <td>
                                <%= employee.getPhone() %>
                            </td>

                            <td>
                                <%= employee.getDepartment() %>
                            </td>

                            <td>
                                <span class="salary">
                                    ₹ <%= employee.getSalary() %>
                                </span>
                            </td>

                            <td>
                                <%= employee.getJoiningDate() %>
                            </td>

                            <td>

                                <% if ("Active".equalsIgnoreCase(employee.getStatus())) { %>

                                    <span class="status active">
                                        Active
                                    </span>

                                <% } else { %>

                                    <span class="status inactive">
                                        Inactive
                                    </span>

                                <% } %>

                            </td>


                            <!-- ACTION -->

                            <td>

                                <div class="actions">

                                    <a href="employees?action=edit&id=<%= employee.getEmployeeId() %>"
                                       class="edit-btn">
                                        Edit
                                    </a>

                                    <a href="employees?action=delete&id=<%= employee.getEmployeeId() %>"
                                       class="delete-btn"
                                       onclick="return confirm('Are you sure you want to delete this employee?');">
                                        Delete
                                    </a>

                                </div>

                            </td>

                        </tr>


                    <%
                            }

                        } else {
                    %>

                        <tr>

                            <td colspan="9">

                                <div class="empty">

                                    No employees found.

                                </div>

                            </td>

                        </tr>

                    <%
                        }
                    %>

                    </tbody>

                </table>

            </div>

        </div>

    </div>


    <!-- ================= FOOTER ================= -->

    <div class="footer">

        © 2026 EmployeeMS · Employee Management System

    </div>


</body>

</html>