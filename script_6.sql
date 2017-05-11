SELECT Person.PersonID||'.'|| Person.FirstName||' '|| Person.LastName ||' - '||COUNT(StudentGrade.EnrollmentID)||' course(s)' AS Count
FROM StudentGrade, Person, Course
WHERE StudentGrade.StudentID = Person.PersonID AND StudentGrade.CourseID = Course.CourseID AND Person.PersonID = 2