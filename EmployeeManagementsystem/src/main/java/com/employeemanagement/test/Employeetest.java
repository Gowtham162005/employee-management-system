package com.employeemanagement.test; 

import java.util.ArrayList;

import com.employeemanagement.model.Employee;

public class Employeetest {
	public static void main(String[] args) {
		
		ArrayList<Employee> a= new ArrayList<Employee>();
		
		Employee employee1 =new Employee(101, "Gowtham", "nagarajgowtham54@gmail.com", "8838814309", "IT", 35000, "23-08-2026", "Active");
		Employee employee2 =new Employee(102, "jaiprakash", "jaiprakash@gmail.com", "8778135643", "IT", 50000, "23-08-2026", "Active");
		Employee employee3 =new Employee(103, "Rahul", "rahul@gmail.com", "8070605040", "IT", 35000, "23-08-2026", "Active");
		
		a.add(employee1);
		a.add(employee2);
        a.add(employee3);
		

        
        int searchid =102;
				for(Employee e:a) {
					if(e.getName().equals("Gowtham")) {

					System.out.print(e);
					}
				}


		



	}

}
