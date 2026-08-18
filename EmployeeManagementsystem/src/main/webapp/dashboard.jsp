<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>EmployeeMS | Dashboard</title>

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
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.06);
        }

        .logo {
            font-size: 25px;
            font-weight: 700;
            color: #2563eb;
        }

        .logo span {
            color: #7c3aed;
        }

        .nav-right {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .admin-name {
            font-size: 14px;
            color: #64748b;
        }

        .logout-btn {
            text-decoration: none;
            background: #fee2e2;
            color: #dc2626;
            padding: 9px 16px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            transition: 0.3s;
        }

        .logout-btn:hover {
            background: #dc2626;
            color: white;
        }


        /* ================= MAIN ================= */

        .main {
            padding: 40px 50px;
        }

        .welcome h1 {
            font-size: 30px;
            color: #0f172a;
            margin-bottom: 8px;
        }

        .welcome p {
            color: #64748b;
            font-size: 15px;
        }


        /* ================= CARDS ================= */

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
            margin-top: 35px;
        }

        .card {
            position: relative;
            padding: 25px;
            border-radius: 16px;
            color: white;
            overflow: hidden;
            min-height: 150px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.12);
        }

        .card-blue {
            background: linear-gradient(135deg, #2563eb, #3b82f6);
        }

        .card-green {
            background: linear-gradient(135deg, #059669, #10b981);
        }

        .card-purple {
            background: linear-gradient(135deg, #7c3aed, #a855f7);
        }

        .card-title {
            font-size: 14px;
            opacity: 0.9;
            margin-bottom: 12px;
        }

        .card-number {
            font-size: 38px;
            font-weight: 700;
        }

        .card-text {
            font-size: 13px;
            margin-top: 8px;
            opacity: 0.85;
        }

        .card-icon {
            position: absolute;
            right: 20px;
            top: 25px;
            font-size: 38px;
            opacity: 0.25;
        }


        /* ================= QUICK ACTIONS ================= */

        .section-title {
            margin-top: 40px;
            margin-bottom: 18px;
            font-size: 20px;
            color: #0f172a;
        }

        .actions {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .action {
            background: white;
            border-radius: 14px;
            padding: 25px;
            text-decoration: none;
            color: #1e293b;
            border: 1px solid #e2e8f0;
            transition: 0.3s;
        }

        .action:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        .action-icon {
            width: 45px;
            height: 45px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 22px;
            margin-bottom: 15px;
        }

        .blue-icon {
            background: #dbeafe;
            color: #2563eb;
        }

        .green-icon {
            background: #d1fae5;
            color: #059669;
        }

        .purple-icon {
            background: #ede9fe;
            color: #7c3aed;
        }

        .action h3 {
            font-size: 16px;
            margin-bottom: 7px;
        }

        .action p {
            color: #64748b;
            font-size: 13px;
        }


        /* ================= FOOTER ================= */

        .footer {
            text-align: center;
            padding: 30px;
            margin-top: 40px;
            color: #94a3b8;
            font-size: 12px;
        }


        /* ================= MOBILE ================= */

        @media (max-width: 800px) {

            .navbar {
                padding: 0 20px;
            }

            .main {
                padding: 30px 20px;
            }

            .cards,
            .actions {
                grid-template-columns: 1fr;
            }

            .admin-name {
                display: none;
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

        <div class="nav-right">

            <span class="admin-name">
                Welcome, Admin
            </span>

            <a href="logout" class="logout-btn">
                Logout
            </a>

        </div>

    </div>


    <!-- ================= MAIN ================= -->

    <div class="main">


        <!-- WELCOME -->

        <div class="welcome">

            <h1>
                Dashboard
            </h1>

            <p>
                Welcome back, Admin. Here's an overview of your employee management system.
            </p>

        </div>


        <!-- ================= STAT CARDS ================= -->

        <div class="cards">


            <!-- TOTAL -->

            <div class="card card-blue">

                <div class="card-title">
                    TOTAL EMPLOYEES
                </div>

                <div class="card-number">
                    <%= request.getAttribute("totalEmployees") %>
                </div>

                <div class="card-text">
                    Employees registered in the system
                </div>

                <div class="card-icon">
                    👥
                </div>

            </div>


            <!-- ACTIVE -->

            <div class="card card-green">

                <div class="card-title">
                    ACTIVE EMPLOYEES
                </div>

                <div class="card-number">
                    <%= request.getAttribute("activeEmployees") %>
                </div>

                <div class="card-text">
                    Currently active employees
                </div>

                <div class="card-icon">
                    ✓
                </div>

            </div>


            <!-- DEPARTMENT -->

            <div class="card card-purple">

                <div class="card-title">
                    MANAGEMENT
                </div>

                <div class="card-number">
                    EMS
                </div>

                <div class="card-text">
                    Employee Management System
                </div>

                <div class="card-icon">
                    ★
                </div>

            </div>


        </div>


        <!-- ================= QUICK ACTIONS ================= -->

        <h2 class="section-title">
            Quick Actions
        </h2>


        <div class="actions">


            <!-- MANAGE -->

            <a href="employees" class="action">

                <div class="action-icon blue-icon">
                    👥
                </div>

                <h3>
                    Manage Employees
                </h3>

                <p>
                    View, edit, search and delete employee records.
                </p>

            </a>


            <!-- ADD -->

            <a href="add-employee.jsp" class="action">

                <div class="action-icon green-icon">
                    +
                </div>

                <h3>
                    Add Employee
                </h3>

                <p>
                    Add a new employee to the system.
                </p>

            </a>


            <!-- LOGOUT -->

           
        </div>


    </div>


    <!-- ================= FOOTER ================= -->

    <div class="footer">

        © 2026 EmployeeMS · Employee Management System

    </div>


</body>

</html>