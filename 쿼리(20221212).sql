SELECT
	course_id,
	SUM(score) AS '총합',
	AVG(score) AS '평군'
FROM
	score_mst
GROUP BY
	course_id	
HAVING
	`총합` > 100;