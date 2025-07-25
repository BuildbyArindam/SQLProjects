-- Trigger to automatically calculate and store GPA after grade is inserted
CREATE TABLE GPA (
    student_id INT,
    semester_id INT,
    gpa DECIMAL(3,2),
    PRIMARY KEY (student_id, semester_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (semester_id) REFERENCES Semesters(semester_id)
);

DELIMITER $$
CREATE TRIGGER calculate_gpa_after_grade_insert
AFTER INSERT ON Grades
FOR EACH ROW
BEGIN
    DECLARE total_credits INT;
    DECLARE total_points DECIMAL(5,2);

    -- Calculate total credits and grade points for the student in the semester
    SELECT SUM(c.credits), SUM(
        CASE NEW.grade
            WHEN 'A' THEN 4.0 * c.credits
            WHEN 'B' THEN 3.0 * c.credits
            WHEN 'C' THEN 2.0 * c.credits
            WHEN 'D' THEN 1.0 * c.credits
            ELSE 0.0
        END)
    INTO total_credits, total_points
    FROM Grades g
    JOIN Courses c ON g.course_id = c.course_id
    WHERE g.student_id = NEW.student_id AND g.semester_id = NEW.semester_id;

    IF total_credits > 0 THEN
        INSERT INTO GPA (student_id, semester_id, gpa)
        VALUES (NEW.student_id, NEW.semester_id, total_points / total_credits)
        ON DUPLICATE KEY UPDATE gpa = total_points / total_credits;
    END IF;
END $$
DELIMITER ;