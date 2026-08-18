CREATE DATABASE IF NOT EXISTS employee_management;

USE employee_management;

CREATE TABLE `employee` (
    `employee_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone` varchar(20) DEFAULT NULL,
    `department` varchar(50) DEFAULT NULL,
    `salary` decimal(10,2) DEFAULT NULL,
    `joining_date` date DEFAULT NULL,
    `status` varchar(20) DEFAULT NULL,
    PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `admin` (
    `admin_id` int NOT NULL AUTO_INCREMENT,
    `username` varchar(50) NOT NULL,
    `password` varchar(100) NOT NULL,
    PRIMARY KEY (`admin_id`),
    UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;