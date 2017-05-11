SELECT
  DISTINCT
  PersonID,
  LastName,
  FirstName,
  HireDate,
  EnrollmentDate
FROM Person, StudentGrade
WHERE PersonID = StudentGrade.StudentID ORDER BY LastName;