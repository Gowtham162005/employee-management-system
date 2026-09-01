package com.employeemanagement.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL =
            "jdbc:mysql://altaria.proxy.rlwy.net:37052/railway";

    private static final String USER = "root";

    private static final String PASSWORD = "pibhEiLDyXaFFJLPzeBYCWrDjooEXZSC";

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection c = DriverManager.getConnection(
                    URL,
                    USER,
                    PASSWORD
            );

            System.out.println("Railway MySQL connection successful!");

            return c;

        } catch (ClassNotFoundException | SQLException e) {

            System.out.println("DATABASE CONNECTION FAILED!");
            e.printStackTrace();

            return null;
        }
    }
}