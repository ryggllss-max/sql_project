


SELECT
	p."year", 
	p.food_name,
    round(avg((p.food_price - d.food_price) / d.food_price * 100), 2) AS food_percent_growth
FROM t_daniel_rygl_project_sql_primary_final AS p
JOIN t_daniel_rygl_project_sql_primary_final AS d
	ON  p.food_name = d.food_name 
	AND p."year" = d."year" + 1
GROUP BY 
	p.food_name,  
	p."year" 
ORDER BY 
	food_percent_growth;