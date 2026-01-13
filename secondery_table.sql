

CREATE TABLE t_daniel_rygl_project_SQL_secondary_final AS
SELECT
	e.country, 
	e."year",
	e.gdp, 
	e.gini,
	e.population 
FROM economies AS e
LEFT JOIN countries AS c  
	ON c.country = e.country
	AND e."year" BETWEEN 2000 AND 2021
WHERE 
	c.continent = 'Europe'
ORDER BY 
	e.country, e."year"; 



