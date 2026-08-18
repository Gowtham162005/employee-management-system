<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>EmployeeMS | Admin Login</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: "Segoe UI", Arial, sans-serif;
            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;

            background: linear-gradient(
                135deg,
                #eef2ff,
                #f8fafc
            );
        }


        /* ================= LOGIN CARD ================= */

        .login-card {
            width: 390px;

            background: white;

            padding: 40px;

            border-radius: 18px;

            box-shadow:
                0 15px 40px rgba(15, 23, 42, 0.10);

            border: 1px solid #e2e8f0;
        }


        /* ================= LOGO ================= */

        .logo {
            text-align: center;

            font-size: 28px;

            font-weight: 700;

            color: #2563eb;

            margin-bottom: 8px;
        }

        .logo span {
            color: #7c3aed;
        }


        /* ================= TITLE ================= */

        .login-title {
            text-align: center;

            font-size: 23px;

            color: #0f172a;

            margin-bottom: 7px;
        }

        .login-subtitle {
            text-align: center;

            color: #64748b;

            font-size: 13px;

            margin-bottom: 30px;
        }


        /* ================= FORM ================= */

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;

            font-size: 13px;

            font-weight: 600;

            color: #334155;

            margin-bottom: 8px;
        }

        input {
            width: 100%;

            height: 46px;

            padding: 0 14px;

            border: 1px solid #cbd5e1;

            border-radius: 9px;

            background: #f8fafc;

            font-family: inherit;

            font-size: 14px;

            outline: none;

            transition: 0.25s;
        }

        input:focus {
            background: white;

            border-color: #2563eb;

            box-shadow:
                0 0 0 3px rgba(37, 99, 235, 0.10);
        }

        input::placeholder {
            color: #94a3b8;
        }


        /* ================= LOGIN BUTTON ================= */

        .login-btn {
            width: 100%;

            height: 46px;

            border: none;

            border-radius: 9px;

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #7c3aed
                );

            color: white;

            font-family: inherit;

            font-size: 14px;

            font-weight: 600;

            cursor: pointer;

            transition: 0.3s;

            box-shadow:
                0 5px 15px rgba(37, 99, 235, 0.20);
        }

        .login-btn:hover {
            transform: translateY(-2px);

            box-shadow:
                0 8px 20px rgba(37, 99, 235, 0.30);
        }


        /* ================= FOOTER ================= */

        .footer {
            text-align: center;

            margin-top: 25px;

            font-size: 12px;

            color: #94a3b8;
        }


        /* ================= MOBILE ================= */

        @media (max-width: 500px) {

            .login-card {
                width: calc(100% - 30px);

                padding: 30px 25px;
            }

        }

    </style>

</head>


<body>


    <div class="login-card">


        <div class="logo">
            Employee<span>MS</span>
        </div>


        <h1 class="login-title">
            Admin Login
        </h1>


        <p class="login-subtitle">
            Sign in to manage your employees
        </p>

<form action="login" method="post" autocomplete="off">

    <div class="form-group">

        <label>Username</label>

        <input type="text"
               name="username"
               placeholder="Enter your username"
               autocomplete="off"
               required>

    </div>

    <div class="form-group">

        <label>Password</label>

        <input type="password"
               name="password"
               placeholder="Enter your password"
               autocomplete="new-password"
               required>

    </div>

    <button type="submit" class="login-btn">
        Login
    </button>

</form>


        <div class="footer">

            Employee Management System © 2026

        </div>


    </div>


</body>

</html>