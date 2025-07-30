Facebook-style Login and Register with Apache Tomcat and MySQL
Here's a complete implementation of a Facebook-style authentication system using Java servlets with Apache Tomcat that stores user data in MySQL.


**Prerequisites**
Apache Tomcat 9.x or later
MySQL 8.x or later
Java JDK 11 or later
Maven for dependency management

**Database setup**

CREATE DATABASE social_auth;
USE social_auth;

CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    gender ENUM('male', 'female', 'other') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    profile_pic VARCHAR(255)
);

CREATE TABLE sessions (
    session_id VARCHAR(255) PRIMARY KEY,
    user_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


Update database details in below file

/src/main/java/com/example/auth/DatabaseConnection.java


final output-----ROOT.war

deploy war file in tomcat webapp folder



