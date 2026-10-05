CREATE DATABASE school;

USE school;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCAHR(100),
  course VARCHAR(100),
  year_level INT
  );

INSERT INTO students (name, course, year_level)
VALUES
('Juan Dela Cruz', 'BSIT', 1),
('Maria Santos, 'BSCS', 2),
('Pedro Reyes', 'BSIT', 3);

SELECT * FROM students;
