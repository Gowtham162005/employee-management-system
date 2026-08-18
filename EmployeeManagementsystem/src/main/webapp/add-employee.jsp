<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>EmployeeMS | Add Employee</title>

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
            align-items: center;
            gap: 12px;
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

        .employees-btn {
            color: #7c3aed;
            background: #f3e8ff;
        }

        .employees-btn:hover {
            background: #7c3aed;
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

        /* ================= PAGE ================= */

        .page {
            width: 100%;
            max-width: 1000px;
            margin: 40px auto;
            padding: 0 20px;
        }

        /* ================= HEADER ================= */

        .page-header {
            margin-bottom: 25px;
        }

        .page-header h1 {
            font-size: 30px;
            color: #0f172a;
            margin-bottom: 6px;
        }

        .page-header p {
            color: #64748b;
            font-size: 14px;
        }

        /* ================= FORM CARD ================= */

        .form-card {
            background: white;
            border-radius: 18px;
            padding: 35px;
            box-shadow: 0 8px 30px rgba(15,23,42,0.07);
            border: 1px solid #e2e8f0;
        }

        .form-title {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-bottom: 30px;
        }

        .form-icon {
            width: 48px;
            height: 48px;
            border-radius: 12px;
            background: #dbeafe;
            color: #2563eb;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 23px;
        }

        .form-title h2 {
            font-size: 20px;
            color: #0f172a;
        }

        .form-title p {
            font-size: 13px;
            color: #64748b;
            margin-top: 3px;
        }

        /* ================= FORM GRID ================= */

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 22px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group.full {
            grid-column: 1 / -1;
        }

        label {
            font-size: 13px;
            font-weight: 600;
            color: #334155;
            margin-bottom: 8px;
        }

        .required {
            color: #ef4444;
        }

        input,
        select {
            width: 100%;
            height: 45px;
            padding: 0 13px;
            border: 1px solid #cbd5e1;
            border-radius: 9px;
            background: #f8fafc;
            font-family: inherit;
            font-size: 14px;
            color: #1e293b;
            outline: none;
            transition: 0.25s;
        }

        input:focus,
        select:focus {
            background: white;
            border-color: #2563eb;
            box-shadow: 0 0 0 3px rgba(37,99,235,0.10);
        }

        input::placeholder {
            color: #94a3b8;
        }

        /* ================= BUTTONS ================= */

        .form-actions {
            display: flex;
            justify-content: flex-end;
            gap: 12px;
            margin-top: 30px;
            padding-top: 25px;
            border-top: 1px solid #e2e8f0;
        }

        .btn {
            border: none;
            text-decoration: none;
            padding: 11px 22px;
            border-radius: 9px;
            font-family: inherit;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
        }

        .cancel-btn {
            background: #f1f5f9;
            color: #475569;
        }

        .cancel-btn:hover {
            background: #e2e8f0;
        }

        .save-btn {
            background: linear-gradient(135deg, #2563eb, #7c3aed);
            color: white;
            box-shadow: 0 5px 15px rgba(37,99,235,0.20);
        }

        .save-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(37,99,235,0.30);
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

            .nav-btn {
                padding: 8px 10px;
            }

            .page {
                margin-top: 25px;
            }

            .form-grid {
                grid-template-columns: 1fr;
            }

            .form-group.full {
                grid-column: auto;
            }

            .form-card {
                padding: 25px 20px;
            }

            .form-actions {
                flex-direction: column;
            }

            .btn {
                width: 100%;
                text-align: center;
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

            <a href="employees"
               class="nav-btn employees-btn">
                Employees
            </a>

            <a href="logout"
               class="nav-btn logout-btn">
                Logout
            </a>

        </div>

    </div>


    <!-- ================= PAGE ================= -->

    <div class="page">

        <!-- PAGE HEADER -->

        <div class="page-header">

            <h1>
                Add Employee
            </h1>

            <p>
                Create a new employee record and add it to the system.
            </p>

        </div>


        <!-- ================= FORM CARD ================= -->

        <div class="form-card">

            <div class="form-title">

                <div class="form-icon">
                    +
                </div>

                <div>

                    <h2>
                        Employee Information
                    </h2>

                    <p>
                        Enter the employee's details below
                    </p>

                </div>

            </div>


            <!-- ================= FORM ================= -->

            <form action="employees" method="post">

                <div class="form-grid">


                    <!-- NAME -->

                    <div class="form-group">

                        <label>
                            Full Name
                            <span class="required">*</span>
                        </label>

                        <input type="text"
                               name="name"
                               placeholder="Enter full name"
                               required>

                    </div>


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label>
                            Email Address
                            <span class="required">*</span>
                        </label>

                        <input type="email"
                               name="email"
                               placeholder="example@email.com"
                               required>

                    </div>


                    <!-- PHONE -->

                    <div class="form-group">

                        <label>
                            Phone Number
                            <span class="required">*</span>
                        </label>

                        <input type="text"
                               name="phone"
                               placeholder="Enter phone number"
                               required>

                    </div>


                    <!-- DEPARTMENT -->

                    <div class="form-group">

                        <label>
                            Department
                            <span class="required">*</span>
                        </label>

                        <input type="text"
                               name="department"
                               placeholder="e.g. IT, HR, Finance"
                               required>

                    </div>


                    <!-- SALARY -->

                    <div class="form-group">

                        <label>
                            Salary
                            <span class="required">*</span>
                        </label>

                        <input type="number"
                               name="salary"
                               placeholder="Enter salary"
                               step="0.01"
                               min="0"
                               required>

                    </div>


                    <!-- JOINING DATE -->

                    <div class="form-group">

                        <label>
                            Joining Date
                            <span class="required">*</span>
                        </label>

                        <input type="date"
                               name="joiningDate"
                               required>

                    </div>


                    <!-- STATUS -->

                    <div class="form-group full">

                        <label>
                            Employee Status
                        </label>

                        <select name="status">

                            <option value="Active">
                                Active
                            </option>

                            <option value="Inactive">
                                Inactive
                            </option>

                        </select>

                    </div>


                </div>


                <!-- BUTTONS -->

                <div class="form-actions">

                    <a href="employees"
                       class="btn cancel-btn">
                        Cancel
                    </a>

                    <button type="submit"
                            class="btn save-btn">
                        Add Employee
                    </button>

                </div>

            </form>

        </div>

    </div>


    <!-- ================= FOOTER ================= -->

    <div class="footer">

        © 2026 EmployeeMS · Employee Management System

    </div>


</body>

</html>