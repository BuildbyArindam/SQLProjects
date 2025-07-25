-- View: Semester-wise GPA summary
CREATE VIEW Semester_GPA_Summary AS
SELECT s.student_id, sem.name AS semester_name, g.gpa
FROM GPA g
JOIN Semesters sem ON g.semester_id = sem.semester_id
ORDER BY s.student_id, g.semester_id;

-- View: Rank list per semester
CREATE VIEW Semester_Rank_List AS
SELECT g.student_id, g.semester_id, g.gpa,
       RANK() OVER (PARTITION BY g.semester_id ORDER BY g.gpa DESC) AS rank_position
FROM GPA g;