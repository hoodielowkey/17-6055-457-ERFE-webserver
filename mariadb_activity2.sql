CREATE TABLE enrollments (
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE
);

ALTER TABLE enrollments
ADD CONSTRAINT fk_student
FOREIGN KEY (student_id)
REFERENCES students(id);

ALTER TABLE enrollments
ADD CONSTRAINT fk_course
FOREIGN KEY (course_id)
REFERENCES courses(course_id);

INSERT INTO enrollments
(student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-10-07'),Laboratory Activity 2: MariaDB Relationships and Queries Using GitHub Codespaces5
(1, 2, '2026-10-07'),
(2, 1, '2026-10-07'),
(3, 3, '2026-10-07');

SELECT
students.name,
courses.course_name,
enrollments.enrollment_date
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id;

SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
WHERE courses.course_name = 'Web Development';

SELECT
students.name,
courses.course_name
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN courses
ON enrollments.course_id = courses.course_id
ORDER BY students.name ASC;

SELECT
courses.course_name,
COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name;

SELECT
courses.course_name,
COUNT(enrollments.student_id) AS number_of_students
FROM courses
LEFT JOIN enrollments
ON courses.course_id = enrollments.course_id
GROUP BY courses.course_id, courses.course_name
ORDER BY number_of_students DESC;

SELECT
students.id AS student_id,
students.name AS student_name,
courses.course_name,
enrollments.enrollment_date
FROM enrollments
JOIN students
ON enrollments.student_id = students.id
JOIN coursesgit
ON enrollments.course_id = courses.course_id
ORDER BY students.name;