INSERT INTO Department (Name, Budget, Administrator, StartDate) VALUES
  ('Business', 50000, 'Alex', '01.09.2014'),
  ('Computer Science', 100000, 'Rustam', '01.09.2015');

INSERT INTO Course (Title, Credits, DepartmentID) VALUES
  ('Business Foundations', 10, (SELECT DepartmentID
                                FROM Department
                                WHERE Name == 'Business')),
  ('Business Analytics', 12, (SELECT DepartmentID
                              FROM Department
                              WHERE Name == 'Business')),
  ('Python for Everybody', 10, (SELECT DepartmentID
                                FROM Department
                                WHERE Name == 'Computer Science')),
  ('Mathematics', 12, (SELECT DepartmentID
                       FROM Department
                       WHERE Name == 'Computer Science'));

INSERT INTO OnlineCourse (CourseID, URL) VALUES
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Analytics'), 'https://www.coursera.org/specializations/business-analytics'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Algorithms'), 'https://www.coursera.org/specializations/algorithms');

INSERT INTO OnsiteCourse (CourseID, Location, Days, Time) VALUES
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Foundations'), 'Odessa, Balkivskya street, house 54b', 90, '2 hours'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Python for Everybody'), 'Odessa, Balkivskya street, house 54b', 60, '1.5 hours');

INSERT INTO Person (LastName, FirstName, HireDate, EnrollmentDate) VALUES
  ('Vegner', 'Alex', '05.09.2014', '10.09.2014'),
  ('Shah', 'Rustam', '15.09.2014', '20.09.2014'),
  ('Vegner', 'Eugene', '25.09.2014', '30.09.2014'),
  ('Makarenko', 'Valeria', '05.10.2014', '10.10.2014'),
  ('Burkun', 'Anton', '15.10.2014', '20.10.2014'),
  ('Stels', 'Valera', '25.10.2014', '30.10.2014');

INSERT INTO StudentGrade (CourseID, StudentID, Grade) VALUES
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Foundations'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Alex'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Analytics'), (SELECT PersonID
                                           FROM Person
                                           WHERE FirstName == 'Alex'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Python for Everybody'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Alex'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Python for Everybody'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Rustam'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Python for Everybody'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Eugene'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Mathematics'), (SELECT PersonID
                                    FROM Person
                                    WHERE FirstName == 'Rustam'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Mathematics'), (SELECT PersonID
                                    FROM Person
                                    WHERE FirstName == 'Valeria'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Mathematics'), (SELECT PersonID
                                    FROM Person
                                    WHERE FirstName == 'Anton'), '1'),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Mathematics'), (SELECT PersonID
                                    FROM Person
                                    WHERE FirstName == 'Valera'), '1');

INSERT INTO CourseInstructor (CourseID, PersonID) VALUES
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Foundations'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Alex')),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Business Analytics'), (SELECT PersonID
                                           FROM Person
                                           WHERE FirstName == 'Alex')),
  ((SELECT CourseID
    FROM Course
    WHERE Title == 'Python for Everybody'), (SELECT PersonID
                                             FROM Person
                                             WHERE FirstName == 'Rustam'));

INSERT INTO OfficeAssignment (InstructorID, Location, TimeStamp) VALUES
  ((SELECT PersonID
    FROM Person
    WHERE FirstName == 'Eugene'), '101 room', 1413763200),
  ((SELECT PersonID
    FROM Person
    WHERE FirstName == 'Rustam'), '102 room', 1413763200),

  ((SELECT PersonID
    FROM Person
    WHERE FirstName == 'Alex'), '103 room', 1413763200);