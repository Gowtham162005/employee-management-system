<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.employeemanagement.model.Employee" %>

<%
    Employee employee = (Employee) request.getAttribute("employee");

    String errorMessage = (String) request.getAttribute("errorMessage");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <title>Edit Employee</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 40px;
        }

        .container {
            width: 500px;
            margin: auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input,
        select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            margin-top: 25px;
            cursor: pointer;
            font-weight: bold;
        }

        .error {
            background-color: #ffe5e5;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
        }

        .back {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>

<div class="container">

    <h1>Edit Employee</h1>

    <% if (errorMessage != null) { %>

        <div class="error">
            <%= errorMessage %>
        </div>

    <% } %>


    <form action="employees" method="post">

        <input type="hidden"
               name="employeeId"
               value="<%= employee.getEmployeeId() %>">


        <label>Name</label>

        <input type="text"
               name="name"
               value="<%= employee.getName() %>"
               required>


        <label>Email</label>

        <input type="email"
               name="email"
               value="<%= employee.getEmail() %>"
               required>


        <label>Phone</label>

        <input type="text"
               name="phone"
               value="<%= employee.getPhone() %>"
               required>


        <label>Department</label>

        <input type="text"
               name="department"
               value="<%= employee.getDepartment() %>"
               required>


        <label>Salary</label>

        <input type="number"
               name="salary"
               value="<%= employee.getSalary() %>"
               step="0.01"
               min="0"
               required>


        <label>Joining Date</label>

        <input type="date"
               name="joiningDate"
               value="<%= employee.getJoiningDate() %>"
               required>


        <label>Status</label>

        <select name="status">

            <option value="Active"
                <%= "Active".equals(employee.getStatus()) ? "selected" : "" %>>
                Active
            </option>

            <option value="Inactive"
                <%= "Inactive".equals(employee.getStatus()) ? "selected" : "" %>>
                Inactive
            </option>

        </select>


        <input type="submit"
               value="Update Employee">

    </form>


    <a class="back" href="employees">
        ← Back to Employee List
    </a>

</div>

</body>
</html>