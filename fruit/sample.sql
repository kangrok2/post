DROP DATABASE IF EXISTS user_management;
CREATE DATABASE user_management
       DEFAULT CHARACTER SET utf8mb4
       DEFAULT COLLATE utf8mb4_unicode_ci;

USE user_management;

CREATE TABLE users (
       username varchar(50) PRIMARY KEY NOT NULL,
       password varchar(100) NOT NULL,
       fullname VARCHAR(100) NOT NULL,
       email VARCHAR(100) NOT NULL,
       phone VARCHAR(10),
       phone2 VARCHAR(10) NOT NULL,
       phone3 VARCHAR(10) NOT NULL,
       gender CHAR(1) CHECK(GENDER IN ('m', 'f'))
);
