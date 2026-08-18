package com.employeemanagement.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.employeemanagement.model.Employee;
import com.employeemanagement.util.DBConnection;

public class EmployeeDAO {

  
    public boolean addEmployee(Employee employee) {

        String sql = "INSERT INTO employee "
                + "(name, email, phone, department, salary, joining_date, status) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPhone());
            ps.setString(4, employee.getDepartment());
            ps.setDouble(5, employee.getSalary());
            ps.setString(6, employee.getJoiningDate());
            ps.setString(7, employee.getStatus());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


   
    public List<Employee> getAllEmployees() {

        List<Employee> employees = new ArrayList<>();

        String sql = "SELECT * FROM employee";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Employee employee = new Employee(
                        rs.getInt("employee_id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("department"),
                        rs.getDouble("salary"),
                        rs.getString("joining_date"),
                        rs.getString("status")
                );

                employees.add(employee);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }


    
    public boolean updateEmployee(Employee employee) {

        String sql = "UPDATE employee SET "
                + "name = ?, "
                + "email = ?, "
                + "phone = ?, "
                + "department = ?, "
                + "salary = ?, "
                + "joining_date = ?, "
                + "status = ? "
                + "WHERE employee_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, employee.getName());
            ps.setString(2, employee.getEmail());
            ps.setString(3, employee.getPhone());
            ps.setString(4, employee.getDepartment());
            ps.setDouble(5, employee.getSalary());
            ps.setString(6, employee.getJoiningDate());
            ps.setString(7, employee.getStatus());
            ps.setInt(8, employee.getEmployeeId());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


    
    public boolean deleteEmployee(int employeeId) {

        String sql = "DELETE FROM employee WHERE employee_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, employeeId);

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


    
    public Employee getEmployeeById(int employeeId) {

        String sql = "SELECT * FROM employee WHERE employee_id = ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setInt(1, employeeId);

            try (ResultSet rs = ps.executeQuery()) {

                if (rs.next()) {

                    return new Employee(
                            rs.getInt("employee_id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("department"),
                            rs.getDouble("salary"),
                            rs.getString("joining_date"),
                            rs.getString("status")
                    );
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    
    public List<Employee> searchEmployees(String name) {

        List<Employee> employees = new ArrayList<>();

        String sql = "SELECT * FROM employee WHERE name LIKE ?";

        try (Connection connection = DBConnection.getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, "%" + name + "%");

            try (ResultSet rs = ps.executeQuery()) {

                while (rs.next()) {

                    Employee employee = new Employee(
                            rs.getInt("employee_id"),
                            rs.getString("name"),
                            rs.getString("email"),
                            rs.getString("phone"),
                            rs.getString("department"),
                            rs.getDouble("salary"),
                            rs.getString("joining_date"),
                            rs.getString("status")
                    );

                    employees.add(employee);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employees;
    }
}