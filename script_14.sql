SELECT DISTINCT
  Course.CourseID,
  Title
FROM Course
EXCEPT
SELECT DISTINCT
  Course.CourseID,
  Title
FROM Course, CourseInstructor
WHERE Course.CourseID = CourseInstructor.CourseID