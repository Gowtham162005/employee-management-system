package com.employeemanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.employeemanagement.util.DBConnection;

public class AdminDAO {

    public boolean login(String username, String password) {

        String sql = "SELECT username, password FROM admin WHERE username = ?";

        try {
            Connection connection = DBConnection.getConnection();

            if (connection == null) {
                System.out.println("ERROR: Database connection is NULL");
                return false;
            }

            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                String dbUsername = rs.getString("username");
                String dbPassword = rs.getString("password");

                System.out.println("Entered username: [" + username + "]");
                System.out.println("Database username: [" + dbUsername + "]");

                if (password != null && password.equals(dbPassword)) {
                    System.out.println("PASSWORD MATCH!");
                    return true;
                } else {
                    System.out.println("PASSWORD DOES NOT MATCH!");
                }

            } else {
                System.out.println("USERNAME NOT FOUND!");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}