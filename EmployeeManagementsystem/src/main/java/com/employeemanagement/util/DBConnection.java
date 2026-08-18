package com.employeemanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://localhost:3306/employee_management";

    private static final String USER = "root";

    private static final String PASSWORD = "YOUR_PASSWORD";

    public static Connection getConnection() {

        Connection c = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            c = DriverManager.getConnection(URL, USER, PASSWORD);


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return c;
    }
}