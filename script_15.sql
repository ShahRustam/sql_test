SELECT Count(DISTINCT Person.PersonID) as 'Count of instructors' FROM Person,CourseInstructor WHERE Person.PersonID = CourseInstructor.PersonID