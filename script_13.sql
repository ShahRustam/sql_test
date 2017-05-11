SELECT
  PersonID,
  LastName,
  FirstName,
  HireDate,
  EnrollmentDate
FROM Person, StudentGrade, Course, OnsiteCourse
WHERE PersonID = StudentGrade.StudentID AND StudentGrade.CourseID = Course.CourseID AND
      Course.CourseID = OnsiteCourse.CourseID GROUP BY PersonID HAVING Count(OnsiteCourse.CourseID) >2;
