# Employee Management System

A web-based Employee Management System developed using Java, JSP, Servlets, JDBC, MySQL, HTML, CSS, and JavaScript.

## Features

- Admin login and logout
- Session-based authentication
- Authentication filter for protected pages
- Dashboard with employee statistics
- Add new employees
- View all employees
- Search employees
- Edit employee details
- Delete employees
- MySQL database integration
- Responsive and professional user interface
- Delete confirmation using JavaScript

## Technologies Used

- Java
- JSP
- Servlets
- JDBC
- MySQL
- HTML5
- CSS3
- JavaScript
- Apache Tomcat
- Eclipse IDE

## Project Architecture

The project follows a layered architecture:

Browser  
↓  
JSP / HTML / CSS / JavaScript  
↓  
Servlet  
↓  
DAO  
↓  
JDBC  
↓  
MySQL Database

### Main Layers

**Model**
- `Employee.java`

**DAO**
- `EmployeeDAO.java`

**Servlets**
- `LoginServlet.java`
- `EmployeeServlet.java`
- `DashboardServlet.java`
- `LogoutServlet.java`

**Filter**
- `AuthFilter.java`

**Utility**
- `DBConnection.java`

**View**
- JSP pages for login, dashboard, employee management, adding and editing employees.

## Database

The project uses MySQL with two main tables:

- `admin`
- `employee`

The database setup script is available at:

```text
database/employee_management.sql