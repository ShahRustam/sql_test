SELECT PersonID,LastName, FirstName, HireDate, EnrollmentID
FROM Person, StudentGrade, Course
WHERE PersonID = StudentGrade.StudentID AND StudentGrade.CourseID = Course.CourseID AND Course.Title LIKE 'Math%';