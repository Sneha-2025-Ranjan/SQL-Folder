/*SQL ASSIGNMENT:

Q1: Create Tables
Create the following 3 tables with appropriate constraints:
Students
StudentID (INT, Primary Key)
Name (VARCHAR(50), NOT NULL)
Age (INT, check Age >= 17)
DepartmentID (INT, Foreign Key → Departments.DepartmentID)

Departments
DepartmentID (INT, Primary Key)
DepartmentName (VARCHAR(50), NOT NULL, UNIQUE)

Courses
CourseID (INT, Primary Key)
CourseName (VARCHAR(50), NOT NULL)
DepartmentID (INT, Foreign Key → Departments.DepartmentID)*/

--Departments Table
Create table Departments(
DepartmentID int Primary Key,
DepartmentName varchar(50) Not null Unique
)

--Students table
Create table Students(
StudentID int Primary key,
Name varchar(50) Not null,
Age int check(Age>=17),
DepartmentID int Foreign Key References Departments(DepartmentID)
)

--Courses tale
Create table Courses(
CourseID int Primary Key,
CourseName varchar(50) Not null,
DepartmentID int Foreign key References Departments(DepartmentID)
)

/* Q2: Insert Data
Insert at least 5 records in each table. Example:
Departments: Computer Science, Mechanical, Electrical, Civil, Electronics.*/
Insert into Departments(DepartmentID,DepartmentName)
Values(121, 'Computer Science'),
(213, 'Mechanical'),
(123, 'Electrical'),
(214, 'Civil'),
(125, 'Electronics')

--Students: Insert students with different ages and departments.
Insert into Students(StudentID, Name, Age, DepartmentID)
Values(1, 'Ramesh', 19, 121),
(2, 'Siya', 27, 213),
(3, 'Rehan',18, 123),
(4, 'Diya', 21, 214),
(5, 'Rehan', 24, 125)

--Courses: Insert courses like DBMS, Thermodynamics, Circuits, Structures, AI, mapped to their departments.*/
Insert into Courses(CourseID, CourseName, DepartmentID)
Values(912, 'AI', 121),
(923, 'DBMS', 213),
(895, 'Thermodynamics', 214),
(934, 'Circuits', 123),
(924, 'Structures', 125)

/* Q3: Apply WHERE & Operators
Write SQL queries for the following:
Display all students whose age is greater than 20.*/
Select *from Students
Where Age>=20

--Display all courses of the "Computer Science" department.
Select CourseName from Courses
join Departments
On Courses.DepartmentID=Departments.DepartmentID
where DepartmentName= 'Computer Science'

--Display all students who belong to the "Electronics" department.
Select Name from Students
Join Departments
ON Students.DepartmentID= Departments.DepartmentID
Where DepartmentName = 'Electronics'

--Display students whose age is between 18 and 22.*/
Select *from Students
where Age>18 AND Age<22

/*Q4: Joins
Perform joins on the tables:
INNER JOIN Students with Departments (to show student names with their department names).*/
Select Name, Departments.DepartmentName from Students
INNER join Departments
ON Students.DepartmentID= Departments.DepartmentID

--LEFT JOIN Courses with Departments (to show all courses, even if some department does not exist).
Select CourseID, CourseName, Departments.DepartmentName from Courses
Left Join Departments
ON Courses.DepartmentID= Departments.DepartmentID

--RIGHT JOIN Students with Courses (to show all courses, even if no student has enrolled in them).*/
Select Courses.CourseID, Courses.CourseName, Name from Students
Right Join Courses
ON Students.DepartmentID= Courses.DepartmentID