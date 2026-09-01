package com.employeemanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://altaria.proxy.rlwy.net:37052/railway";

    private static final String USER = "root";

    private static final String PASSWORD = "your-railway-password";

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