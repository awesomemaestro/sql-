SELECT Teacher.first_name, Teacher.last_name, COUNT(Schedule.id) AS amount_classes
FROM Teacher
LEFT JOIN Schedule
ON Teacher.id = Schedule.teacher
GROUP BY Teacher.first_name, Teacher.last_name
