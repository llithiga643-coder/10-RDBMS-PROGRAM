create database lithu021111;
use lithu021111;
CREATE TABLE Course (
    Course_ID INT PRIMARY KEY,
    Course_Name VARCHAR(50),
    Credits INT
);
INSERT INTO Course VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);
CREATE TABLE Enrollment (
    Enrollment_ID INT PRIMARY KEY,
    Student_ID INT,
    Course_ID INT
);
INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);
SELECT
    C.Course_ID,
    C.Course_Name,
    C.Credits,
    E.Enrollment_ID,
    E.Student_ID
FROM Course C
LEFT JOIN Enrollment E
ON C.Course_ID = E.Course_ID;
SELECT
    C.Course_ID,
    C.Course_Name,
    C.Credits,
    E.Enrollment_ID,
    E.Student_ID
FROM Course C
RIGHT JOIN Enrollment E
ON C.Course_ID = E.Course_ID;

