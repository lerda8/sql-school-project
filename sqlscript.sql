/***************************************************************************************************
Name:               Database Management Systems Class Project
Create Date:        2022-11-27
Author:             Lucas Ballaty
****************************************************************************************************/

CREATE TABLE Professor (

    Professor_id NUMBER(4),

    ProfessorFirstName VARCHAR2(20),

    ProfessorLastName VARCHAR2(20),

    ProfessorHomeAdress VARCHAR2(40),

    ProfessorWorkAdress VARCHAR2(40),

    ProfessorWorkPhone NUMBER(9),

    ProfessorHomePhone NUMBER(9)

);

ALTER TABLE Professor

ADD PRIMARY KEY (Professor_id);

CREATE TABLE Student (

    StudentFirstName VARCHAR2(20),

    StudentLastName VARCHAR2(20),

    StudentAdvisor NUMBER(4),

    StudentBirthdate DATE,

    StudentEmail VARCHAR2(20),

    StudentAdress VARCHAR2(40),

    StudentPhone NUMBER(9),

    StudentPronouns VARCHAR2(3)

);

ALTER TABLE Student

ADD Student_id NUMBER(4);

ALTER TABLE Student

ADD PRIMARY KEY (Student_id);

ALTER TABLE Student

ADD FOREIGN KEY (StudentAdvisor) REFERENCES Professor(Professor_id);

CREATE TABLE Pronouns

( Pronouns_id VARCHAR2(3) PRIMARY KEY

);

ALTER TABLE Student

ADD FOREIGN KEY (StudentPronouns) REFERENCES Pronouns(Pronouns_id);

CREATE TABLE Courses(

    Course_id NUMBER(4),

    CourseTeacher NUMBER(4),

    CourseStudents NUMBER(4),

    CourseName VARCHAR2(40),

    CourseNameShort VARCHAR2(20),

    CourseDescription VARCHAR2(100),

    CourseSection VARCHAR2(10),

    CourseModeOfDelivery VARCHAR2(10),

    CourseLearningOutcome VARCHAR2(100)

);

ALTER TABLE Courses

ADD PRIMARY KEY (Course_id);

ALTER TABLE Courses

ADD FOREIGN KEY (CourseProfessor) REFERENCES Professor(Professor_id);

ALTER TABLE Courses

ADD FOREIGN KEY (CourseTeacher) REFERENCES Professor(Professor_id);

ALTER TABLE Courses

ADD FOREIGN KEY (CourseStudents) REFERENCES Student(Student_id);

CREATE TABLE CourseCompletion (

Course NUMBER(4),

Student NUMBER(4)

);

ALTER TABLE CourseCompletion

ADD FOREIGN KEY (Course) REFERENCES Courses(Course_id);

ALTER TABLE CourseCompletion

ADD FOREIGN KEY (Student) REFERENCES Student(Student_id);

SELECT USERNAME FROM ALL_USERS;

SELECT
    student.studentfirstname AS StudentFirstName
FROM
    SYS_TABLES;

SELECT
    student.studentfirstname AS StudentFirstName
FROM
    ALL_TABLES;

SELECT
    Student.StudentFirstname AS StudentFirstName
FROM
    ALL_TABLES;

SELECT
    Student.StudentFirstname AS StudentFirstName
FROM
    user_tables;

SELECT
    Student.StudentFirstname AS StudentFirstName
FROM
    user_tables;

SELECT
    Student.StudentFirstname AS StudentFirstName
FROM
    Student;

SELECT
    StudentFirstname AS StudentFirstName
FROM
    Student;

DECS USER_TABLES;


DECS USER_TABLES


DECSRIBE Student;


SELECT StudentFirstName
FROM Student;

SELECT StudentFirstName
FROM Tables;

Student.StudentFirstName IS 'Students first name';


COMMENT ON Student.StudentFirstName IS 'Students first name';

COMMENT ON COLUMN Student.StudentFirstName IS 'Students first name';

COMMENT ON COLUMN Student.StudentLastName IS 'Students last name';

COMMENT ON COLUMN Student.StudentAdvisor IS 'Students advisor name';

COMMENT ON COLUMN Student.StudentBirthdate IS 'Students date of birth';

COMMENT ON COLUMN Student.StudentEmail IS 'Students e-mail address';

COMMENT ON COLUMN Student.StudentAdress IS 'Students address';

COMMENT ON COLUMN Student.StudentPhone IS 'Students phone-number';

COMMENT ON COLUMN Student.StudentPronouns IS 'Students pronouns';

COMMENT ON COLUMN Student.Student_ID IS 'Students identification number';

COMMENT ON COLUMN Courses.Course_ID IS 'Identification number of the course';

COMMENT ON COLUMN Courses.CourseTeacher IS 'Teacher of the course';

COMMENT ON COLUMN Courses.Students IS 'Students attending the course';

COMMENT ON COLUMN Courses.CourseStudents IS 'Students attending the course';

COMMENT ON COLUMN Courses.CourseName IS 'Name of the course';

COMMENT ON COLUMN Courses.CourseNameShort IS 'Shortened name of the course';

COMMENT ON COLUMN Courses.CourseDescription IS 'Description the course';

COMMENT ON COLUMN Courses.CourseSection IS 'Section the course';

COMMENT ON COLUMN Courses.CourseModeofdelivery IS 'Mode of delivery of the course';

COMMENT ON COLUMN Courses.CourseLearningOutcome IS 'Learning outcome of the course';

COMMENT ON COLUMN Professor.Professor_ID IS 'Professors identification number';

COMMENT ON COLUMN Professor.ProfessorFirstName IS 'Professors first name';

COMMENT ON COLUMN Professor.ProfessorLastName IS 'Professors last name';

COMMENT ON COLUMN Professor.ProfessorHomeAdress IS 'Professors home address';

COMMENT ON COLUMN Professor.ProfessorWorkAdress IS 'Professors work address';

COMMENT ON COLUMN Professor.ProfessorWorkPhone IS 'Professors phone number to work';

COMMENT ON COLUMN Professor.ProfessorHomePhone IS 'Professors phone number to home';

COMMENT ON COLUMN CourseCompletion.Course IS 'Name of the course';

COMMENT ON COLUMN CourseCompletion.Student IS 'Name of the student attending course';

ALTER TABLE CourseCompltion
ADD COLUMN CompletionStatus VARCHAR2(20);

ALTER TABLE CourseCompletion
ADD COLUMN CompletionStatus VARCHAR2(20);

ALTER TABLE COURSECOMPLETION
ADD COLUMN CompletionStatus VARCHAR2(20);

ALTER TABLE COURSECOMPLETION
ADD CompletionStatus VARCHAR2(20);

ALTER TABLE COURSECOMPLETION
ADD PRIMARY KEY (CompletionStatus);

ALTER TABLE COURSECOMPLETION
ADD FOREIGN KEY (Course) REFERENCES Courses(Course_ID);

ALTER TABLE COURSECOMPLETION
ADD FOREIGN KEY (Student) REFERENCES Student(Student_ID);

COMMENT ON COLUMN COURSECOMPLETION.COMPLETIONSTATUS IS 'Completion status of a course';

COMMENT ON COLUMN Pronouns.Pronouns_ID IS 'Pronouns';

SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Students';

SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'Students';

SELECT Students FROM user_tables;

SELECT table_name FROM user_tables;

select *

from information_schema.columns

where Table_Name = 'Student' and Column_Name = 'StudentFirstName';

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge', 'Askren', '0001', '12.29.2000', 'jorge.askren@email.com', 'Velenice 13, Dymokury', '608987567', 'He', '0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge', 'Askren', '0001', '29.12.2000', 'jorge.askren@email.com', 'Velenice 13, Dymokury', '608987567', 'He', '0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge', 'Askren', '0001', 'December.12.2000', 'jorge.askren@email.com', 'Velenice 13, Dymokury', '608987567', 'He', '0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'December.12.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'12.12.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'23.02.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'02.02.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'2.2.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'2000.12.29',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.012.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.December.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.3.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.03.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.Jan.2000',
'jorge.askren@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentAdvisor, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone,StudentPronouns, Student_ID)
VALUES
('Jorge',
'Askren',
'0001',
'20.Jan.2000',
'jorge.ask@email.com',
'Velenice 13, Dymokury',
'608987567',
'He',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('Jorge',
'Askren',
'20.Jan.2000',
'jorge.ask@email.com',
'Velenice 13, Dymokury',
'608987567',
'0001');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('John',
'Jones',
'21.Feb.2000',
'john.jones@email.com',
'Cineves 9, Dymokury',
'849365543',
'0002');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('Ben',
'Askren',
'17.Apr.2002',
'ben.askren@email.com',
'Piskova Lhota 9, Podebrady',
'876098876',
'0003');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('Max',
'Holloway',
'09.Sep.1998',
'max.holl@email.com',
'Piskova Lhota 9, Podebrady',
'089576345',
'0004');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('Dustin',
'Porier',
'08.Sep.2001',
'dustin.porier@email.com',
'Patek 13, Podebrady',
'876776456',
'0005');

INSERT INTO Student
(StudentFirstName, StudentLastName, StudentBirthdate, StudentEmail, StudentAdress,StudentPhone, Student_ID)
VALUES
('Dustin',
'Porier',
'08.Sep.2001',
'dustin.por@email.com',
'Patek 13, Podebrady',
'876776456',
'0005');

SELECT * FROM Student;

INSERT INTO Pronouns
(Pronouns_ID)
VALUES
('He');

INSERT INTO Pronouns
(Pronouns_ID)
VALUES
('She');

INSERT INTO Professor
(Professor_ID, ProfessorFirstName, ProfessorLastName, ProfessorHomeAdress, ProfessorWorkAdress, ProfessorWorkPhone, ProfessorHomePhone)
VALUES
('0001','Alex', 'Volkanovski', 'Velenice 12, Podebrady', 'Na Hrazy 13, Podebrady', '089687777', '374446554');

INSERT INTO Professor
(Professor_ID, ProfessorFirstName, ProfessorLastName, ProfessorHomeAdress, ProfessorWorkAdress, ProfessorWorkPhone, ProfessorHomePhone)
VALUES
('0002','Jiri', 'Prochazka', 'Havlickova 07, Podmoky', 'Na Hrazy 13, Podebrady', '897776567', '234332435');

INSERT INTO Professor
(Professor_ID, ProfessorFirstName, ProfessorLastName, ProfessorHomeAdress, ProfessorWorkAdress, ProfessorWorkPhone, ProfessorHomePhone)
VALUES
('0003','Glover', 'Texeire', 'Novackova 18, Kouty', 'Na Hrazy 13, Podebrady', '576887987', '465678767');

INSERT INTO Professor
(Professor_ID, ProfessorFirstName, ProfessorLastName, ProfessorHomeAdress, ProfessorWorkAdress, ProfessorWorkPhone, ProfessorHomePhone)
VALUES
('0004','Islam', 'Makhachev', 'Novackova 18, Kouty', 'Na Hrazy 13, Podebrady', '668789534', '089687366');

INSERT INTO Professor
(Professor_ID, ProfessorFirstName, ProfessorLastName, ProfessorHomeAdress, ProfessorWorkAdress, ProfessorWorkPhone, ProfessorHomePhone)
VALUES
('0005','Renato', 'Moicano', 'Na Slapy 21, Nymburj', 'Na Hrazy 13, Podebrady', '345566576', '987777678');

SELECT * FROM Professor;

SELECT * FROM Student;

UPDATE Student
SET StudentAdvisor='0001', StudentPronouns='He',
WHERE Student_ID='0001';

UPDATE Student
SET StudentAdvisor = '0001' , StudentPronouns = 'He',
WHERE Student_ID = '0001';

UPDATE Student
SET StudentAdvisor = '0001' , StudentPronouns = 'He'
WHERE Student_ID = '0001';

UPDATE Student
SET StudentAdvisor = '0002' , StudentPronouns = 'He'
WHERE Student_ID = '0002';

UPDATE Student
SET StudentAdvisor = '0002' , StudentPronouns = 'She'
WHERE Student_ID = '0003';

UPDATE Student
SET StudentAdvisor = '0004' , StudentPronouns = 'He'
WHERE Student_ID = '0004';

UPDATE Student
SET StudentAdvisor = '0005' , StudentPronouns = 'He'
WHERE Student_ID = '0005';

SELECT * FROM Student;

INSERT INTO Courses (Course_ID, CourseTeacher, CourseStudents, CourseName, CourseNameShort, CourseDescription, CourseSection, CourseModeOfDelivery,
 CourseLearningOutcome)
 VALUES ('0001', '0001', '0001','US History', 'USH', 'Learn History of US since 1900', 'Morning', 'Online', 'Student will know history of US from 1900');

INSERT INTO Courses (Course_ID, CourseTeacher, CourseStudents, CourseName, CourseNameShort, CourseDescription, CourseSection, CourseModeOfDelivery,
 CourseLearningOutcome)
 VALUES ('0002', '0002', '0002','Art', 'ART', 'Learn how to read Art', 'Morning', 'In-Person', 'Student will know how to identify Art');

INSERT INTO Courses (Course_ID, CourseTeacher, CourseStudents, CourseName, CourseNameShort, CourseDescription, CourseSection, CourseModeOfDelivery,
 CourseLearningOutcome)
 VALUES ('0003', '0003', '0003','Sport', 'SPR', 'Learn how move', 'Afternoon', 'In-Person', 'Student will learn sports');

INSERT INTO Courses (Course_ID, CourseTeacher, CourseStudents, CourseName, CourseNameShort, CourseDescription, CourseSection, CourseModeOfDelivery,
 CourseLearningOutcome)
 VALUES ('0004', '0004', '0004','History of Art', 'HAR', 'Learn history of art', 'Afternoon', 'Online', 'Student will understand the history of art');

SELECT * FROM Courses;

 INSERT INTO Courses (Course_ID, CourseTeacher, CourseStudents, CourseName, CourseNameShort, CourseDescription, CourseSection, CourseModeOfDelivery,
 CourseLearningOutcome)
 VALUES ('0005', '0005', '0005','Computers', 'COM', 'Learn basics of computers', 'Morning', 'In-Person', 'Student will understand how to use computers');

 INSERT INTO CourseCompletion (Course, Student, CompletionStatus)
 VALUES ('0001', '0005', 'Done');

 INSERT INTO CourseCompletion (Course, Student, CompletionStatus)
 VALUES ('0002', '0004', 'In-Progress');

 INSERT INTO CourseCompletion (Course, Student, CompletionStatus)
 VALUES ('0003', '0003', 'In-Progress');

 INSERT INTO CourseCompletion (Course, Student, CompletionStatus)
 VALUES ('0004', '0002', 'Done');

 INSERT INTO CourseCompletion (Course, Student, CompletionStatus)
 VALUES ('0005', '0001', 'About to start');

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID,
Course.CourseName
FROM Student
INNER JOIN Professor;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID,
Course.CourseName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID, Course.CourseName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID, Courses.CourseName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID, Courses.CourseName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID, Courses.CourseName,
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseTeacher, Courses.Course_ID, Courses.Coursename
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Course.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Course.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID, Course.CourseSection
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Course.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID, Course.CourseSection
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID, Courses.CourseSection
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID,
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID, Course.CourseSection
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName, Courses.CourseName, Courses.CourseTeacher, Courses.Course_ID, Courses.CourseSection
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
INNER JOIN Courses ON Professor.Professor_ID=Courses.CourseTeacher
ORDER BY Courses.CourseSection;

ALTER TABLE Courses
ADD CoursePrerequisite NUMBER(22);

ALTER TABLE Courses
ADD FOREIGN KEY (CoursePrerequisite) References Courses(Course_ID);

SELECT * FROM COURSES;

UPDATE Courses
SET CoursePrerequisite = '0001'
WHERE Course_ID = '0005';

UPDATE Courses
SET CoursePrerequisite = '0002'
WHERE Course_ID = '0004';

UPDATE Courses
SET CoursePrerequisite = '0003'
WHERE Course_ID = '0004';

UPDATE Courses
SET CoursePrerequisite = '0004'
WHERE Course_ID = '0002';

UPDATE Courses
SET CoursePrerequisite = '0005'
WHERE Course_ID = '0001';

SELECT * FROM Courses;

UPDATE Courses
SET CoursePrerequisite = '0002'
WHERE Course_ID = '0003';

SELECT * FROM Courses;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Course
INNER JOIN Courses ON Courses.Course_ID=Courses.CoursePrerequisite
;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
INNER JOIN Courses ON Courses.Course_ID=Courses.CoursePrerequisite
;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
INNER JOIN Courses ON Courses.Course_ID = Courses.CoursePrerequisite
;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
INNER JOIN Courses ON Courses.Course_ID = Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
JOIN Courses ON Courses.Course_ID = Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
JOIN Courses ON Courses.Course_ID = PreReq.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses
JOIN Courses ON Courses.Course_ID = CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses main
JOIN Courses prereq ON Courses.Course_ID = Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses main
JOIN Courses prereq ON Courses.Course_ID = Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses AS Cour
JOIN Courses AS prereq ON Courses.Course_ID = Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses AS Cour
JOIN Courses AS Prereq ON Cour.Courses.Course_ID = Prereq.Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses AS Cour
JOIN Courses AS Prereq ON Cour.Courses.Course_ID = Prereq.Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses AS Cour
JOIN Courses AS Prereq ON Cour.Courses.Course_ID = Prereq.Courses.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY Courses.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursesPrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, Courses.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, Courses.CourseName, p.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT Courses.Course_ID, c.CourseName, p.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT c.Course_ID, c.CourseName, p.CoursePrerequisite
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT c.Course_ID, c.CourseName, p.CoursePrerequisite, p.CourseName
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT c.Course_ID, c.CourseName, p.CoursePrerequisite, p.CourseName AS PrerequisiteName
FROM Courses c
JOIN Courses p ON c.Course_ID = p.CoursePrerequisite
ORDER BY c.Course_ID;

SELECT * FROM Students;

SELECT * FROM Student;

ALTER TABLE Students
ADD StudentYearsEnrolled NUMBER(4);

ALTER TABLE Student
ADD StudentYearsEnrolled NUMBER(4);

UPDATE Student
SET StudentYearsEnrolled = '0003'
WHERE Student_ID = '0001';

UPDATE Student
SET StudentYearsEnrolled = '0004'
WHERE Student_ID = '0002';

UPDATE Student
SET StudentYearsEnrolled = '0004'
WHERE Student_ID = '0003';

UPDATE Student
SET StudentYearsEnrolled = '0001'
WHERE Student_ID = '0004';

UPDATE Student
SET StudentYearsEnrolled = '0003'
WHERE Student_ID = '0005';

SELECT * FROM Student;

SELECT Student.StudentLastName, Student.StudentFirstName, Student.StudentYearsEnrolled Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Student.StudentYearsEnrolled Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
ORDER BY Courses.CourseSection;

SELECT Student.StudentLastName, Student.StudentFirstName, Student.StudentYearsEnrolled Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
ORDER BY Student.Student_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Student.StudentYearsEnrolled Professor.ProfessorFirstName, Professor.ProfessorLastName,
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
ORDER BY Student.Student_ID;

SELECT Student.StudentLastName, Student.StudentFirstName, Student.StudentYearsEnrolled, Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
ORDER BY Student.Student_ID;
/***********************************************************************
EDIT 27.11.2022
I used the advisors ID to search for him in the database as its unique. Because the ID is a primary key
and primary keys are automaticly indexed, I don't think indexing anything else would make a significant difference.
************************************************************************/

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
WHERE Professor.Professor_ID = '2'
ORDER BY Student.Student_ID;


/*
~~~This is when I think indexing would make sense. But I would not do this in practice because it is not uncommon to have
the same name so there is room for error..~~~


SET AUTOTRACE ON;

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
WHERE Professor.ProfessorFirstname = 'Jiri' and Professor.ProfessorLastName = 'Prochazka'
ORDER BY Student.Student_ID;

CREATE INDEX Professor_ID_idx
ON Professor (ProfessorFirstname, ProfessorLastname);

SELECT Student.StudentLastName, Student.StudentFirstName, Professor.ProfessorFirstName, Professor.ProfessorLastName
FROM Student
INNER JOIN Professor ON Student.StudentAdvisor=Professor.Professor_ID
WHERE Professor.ProfessorFirstname = 'Jiri' and Professor.ProfessorLastName = 'Prochazka'
ORDER BY Student.Student_ID;
*/
