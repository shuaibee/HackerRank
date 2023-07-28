SELECT CASE WHEN g.grade < 8 THEN NULL ELSE s.name END as name, g.grade, s.marks 
FROM students s JOIN grades g ON s.marks BETWEEN g.min_mark AND g.max_mark 
ORDER BY g.grade Desc, s.name;