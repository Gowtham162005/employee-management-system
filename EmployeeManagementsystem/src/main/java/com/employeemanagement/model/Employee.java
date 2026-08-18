package com.employeemanagement.model;

public class Employee {

	
	    private int employeeId;
	    private String name;
	    private String email;
	    private String phone;
	    private String department;
	    private double salary;
	    private String joiningDate;
	    private String status;
	    
	    
	 
		public int getEmployeeId() {
			return employeeId;
		}
		public void setEmployeeId(int employeeId) {
			this.employeeId = employeeId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getDepartment() {
			return department;
		}
		public void setDepartment(String department) {
			this.department = department;
		}
		public double getSalary() {
			return salary;
		}
		public void setSalary(double salary) {
			this.salary = salary;
		}
		public String getJoiningDate() {
			return joiningDate;
		}
		public void setJoiningDate(String joiningDate) {
			this.joiningDate = joiningDate;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		
		   public Employee(int employeeId, String name, String email, String phone, String department, double salary,
					String joiningDate, String status) {
				super();
				this.employeeId = employeeId;
				this.name = name;
				this.email = email;
				this.phone = phone;
				this.department = department;
				this.salary = salary;
				this.joiningDate = joiningDate;
				this.status = status;
			}
		   @Override
		   public String toString() {
			return "Employee [employeeId=" + employeeId + ", name=" + name + ", email=" + email + ", phone=" + phone
					+ ", department=" + department + ", salary=" + salary + ", joiningDate=" + joiningDate + ", status="
					+ status + "]";
		   }
		   
		   
		


}
