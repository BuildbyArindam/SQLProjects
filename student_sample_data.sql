Use me;

INSERT INTO Students (first_name, last_name, enrollment_year, department) VALUES
('Alice', 'Johnson', 2021, 'Computer Science'),
('Bob', 'Smith', 2020, 'Mechanical Engineering'),
('Carol', 'Lee', 2022, 'Electrical Engineering');

INSERT INTO Courses (course_name, credits, department) VALUES
('Database Systems', 3, 'Computer Science'),
('Thermodynamics', 4, 'Mechanical Engineering'),
('Circuits', 3, 'Electrical Engineering');

INSERT INTO Semesters (semester_name, year) VALUES
('Spring', 2024),
('Fall', 2024);

INSERT INTO Grades (student_id, course_id, semester_id, grade) VALUES
(1, 1, 1, 'A'),
(2, 2, 1, 'B'),
(3, 3, 1, 'A'),
(1, 1, 2, 'B'),
(2, 2, 2, 'A');