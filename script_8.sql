SELECT
  DISTINCT
  Course.CourseID,
  LastName,
  FirstName
FROM Person, CourseInstructor, StudentGrade, Course
WHERE Person.PersonID = CourseInstructor.PersonID AND CourseInstructor.CourseID = Course.CourseID AND
      StudentGrade.CourseID = Course.CourseID AND StudentID = 1;