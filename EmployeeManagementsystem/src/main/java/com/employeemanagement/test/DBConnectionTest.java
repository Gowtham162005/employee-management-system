package com.employeemanagement.test;

import java.sql.Connection;

import com.employeemanagement.util.DBConnection;

public class DBConnectionTest {

    public static void main(String[] args) {

        Connection connection = DBConnection.getConnection();

        if (connection != null) {
            System.out.println("Connection test successful!");
        } else {
            System.out.println("Connection failed!");
        }
    }
}