


WITH salary_price AS(
	SELECT
		p.payroll_year,
		round(avg(p.avg_salary_cz::numeric), 0) AS avg_salary,
		round(avg(p.food_price::numeric), 2) AS avg_food_price
	FROM t_daniel_rygl_project_sql_primary_final AS p
	GROUP BY 
		p.payroll_year 
	ORDER BY 
		p.payroll_year
),
czechia AS (
	SELECT*
	FROM t_daniel_rygl_project_sql_secondary_final AS s
	WHERE s.country = 'Czech Republic'
)
SELECT
	cz.country,
	cz."year",
	cz.gdp, 
	sp. avg_salary, 
	sp.avg_food_price,
	round(cz.gdp-lag(cz.gdp) OVER (ORDER BY cz."year")) AS gdp_yoy_different,
	sp.avg_salary -lag(sp.avg_salary ) OVER (ORDER BY cz."year" ) AS salary_yoy_different,
	sp.avg_food_price  -lag(sp.avg_food_price) OVER (ORDER BY cz."year" ) AS food_price_yoy_different
FROM czechia AS cz
LEFT JOIN salary_price AS sp 
	ON cz."year" = sp.payroll_year;