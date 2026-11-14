-- Optional: Hibernate creates the table automatically (ddl-auto=update).
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE IF NOT EXISTS students (
    id     BIGINT AUTO_INCREMENT PRIMARY KEY,
    name   VARCHAR(255) NOT NULL,
    email  VARCHAR(255) NOT NULL UNIQUE,
    course VARCHAR(255) NOT NULL,
    age    INT NOT NULL
);
