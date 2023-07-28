WITH Project_startDate AS (SELECT start_date, RANK() OVER (ORDER BY end_date) rank_id FROM projects WHERE start_date NOT IN (SELECT end_date FROM projects))
, Project_endDate AS (SELECT end_date, RANK() OVER (ORDER BY start_date) rank_id FROM projects WHERE end_date NOT IN (SELECT start_date FROM projects))

SELECT ps.start_date, pe.end_date FROM Project_StartDate ps JOIN Project_endDate pe ON ps.rank_id=pe.rank_id ORDER BY DATEDIFF(day,ps.start_date,pe.end_date) ASC, ps.start_date 