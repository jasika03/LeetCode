# Write your MySQL query statement below
SELECT student_id,student_name,s.subject_name,
COUNT(e.subject_name) AS attended_exams
FROM students 
CROSS JOIN Subjects s
LEFT JOIN Examinations e
USING(student_id,subject_name)
GROUP BY subject_name,student_id
ORDER BY student_iD, subject_name
