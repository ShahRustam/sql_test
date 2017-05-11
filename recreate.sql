DROP TABLE Department;
DROP TABLE Course;
DROP TABLE OnlineCourse;
DROP TABLE OnsiteCourse;
DROP TABLE Person;
DROP TABLE StudentGrade;
DROP TABLE CourseInstructor;
DROP TABLE OfficeAssignment;

CREATE TABLE Department (
  DepartmentID  INTEGER PRIMARY KEY AUTOINCREMENT,
  Name          TEXT    NOT NULL,
  Budget        INTEGER    NOT NULL,
  Administrator TEXT    NOT NULL,
  StartDate     DATE    NOT NULL
);

CREATE TABLE Course (
  CourseID     INTEGER PRIMARY KEY AUTOINCREMENT,
  Title        TEXT    NOT NULL,
  Credits      TEXT    NOT NULL,
  DepartmentID INTEGER NOT NULL,
  FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

CREATE TABLE OnlineCourse (
  CourseID INTEGER NOT NULL PRIMARY KEY,
  URL      TEXT    NOT NULL,
  FOREIGN KEY (CourseID) REFERENCES Course (CourseID)
);

CREATE TABLE OnsiteCourse (
  CourseID INTEGER NOT NULL PRIMARY KEY,
  Location TEXT    NOT NULL,
  Days     INTEGER NOT NULL,
  Time     TEXT    NOT NULL,
  FOREIGN KEY (CourseID) REFERENCES Course (CourseID)
);

CREATE TABLE Person (
  PersonID       INTEGER PRIMARY KEY AUTOINCREMENT,
  LastName       TEXT    NOT NULL,
  FirstName      TEXT    NOT NULL,
  HireDate       DATE    NOT NULL,
  EnrollmentDate DATE    NOT NULL
);

CREATE TABLE StudentGrade (
  EnrollmentID INTEGER PRIMARY KEY AUTOINCREMENT,
  CourseID     INTEGER NOT NULL,
  StudentID    INTEGER NOT NULL,
  Grade        TEXT    NOT NULL,
  FOREIGN KEY (CourseID) REFERENCES Course (CourseID),
  FOREIGN KEY (StudentID) REFERENCES Person (PersonID)
);

CREATE TABLE CourseInstructor (
  CourseID INTEGER NOT NULL,
  PersonID INTEGER NOT NULL,
  FOREIGN KEY (CourseID) REFERENCES Course (CourseID),
  FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
  PRIMARY KEY (CourseID,PersonID)
);

CREATE TABLE OfficeAssignment (
  InstructorID INTEGER NOT NULL PRIMARY KEY,
  Location     TEXT    NOT NULL,
  TimeStamp    INTEGER NOT NULL,
  FOREIGN KEY (InstructorID) REFERENCES Person (PersonID)
);
