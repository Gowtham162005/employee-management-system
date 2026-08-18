package com.employeemanagement.test;

import java.util.List;

import com.employeemanagement.dao.EmployeeDAO;
import com.employeemanagement.model.Employee;

public class EmployeeDAOTest {

    public static void main(String[] args) {

        EmployeeDAO dao = new EmployeeDAO();

  

        // SELECT ALL
        List<Employee> employees = dao.getAllEmployees();

        System.out.println("All Employees:");

        for (Employee emp : employees) {
            System.out.println(emp);
        }
    }
}