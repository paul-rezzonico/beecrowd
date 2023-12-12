SELECT 'Approved: ' || students.name AS name, students.grade AS grade FROM students 
WHERE students.grade>=7
ORDER BY students.grade DESC;