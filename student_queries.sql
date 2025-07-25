-- Query: Calculate GPA for a student in a semester
SELECT g.student_id, g.semester_id, ROUND(SUM(
    CASE gr.grade
        WHEN 'A' THEN 4.0 * c.credits
        WHEN 'B' THEN 3.0 * c.credits
        WHEN 'C' THEN 2.0 * c.credits
        WHEN 'D' THEN 1.0 * c.credits
        ELSE 0.0
    END) / SUM(c.credits), 2) AS GPA
FROM Grades gr
JOIN Courses c ON gr.course_id = c.course_id
JOIN Grades g ON gr.grade_id = g.grade_id
GROUP BY g.student_id, g.semester_id;

-- Query: Pass/Fail statistics
SELECT s.student_id,
       COUNT(CASE WHEN g.grade IN ('A', 'B', 'C', 'D') THEN 1 END) AS passed_courses,
       COUNT(CASE WHEN g.grade = 'F' THEN 1 END) AS failed_courses
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
GROUP BY s.student_id;

-- Query: Rank list for a semester using GPA
SELECT g.student_id, g.semester_id, g.gpa,
       RANK() OVER (PARTITION BY g.semester_id ORDER BY g.gpa DESC) AS rank_position
FROM GPA g;