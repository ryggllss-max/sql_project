

SELECT
	p.payroll_year,
	round(avg(p.avg_salary_cz), 0) AS avg_salary,
	p.food_name,
	p.food_price AS food_price_per_one, 
	round(round(avg(p.avg_salary_cz), 0)/p.food_price) AS sum_food_by_year,
	p.value,
	p.unit 
FROM t_daniel_rygl_project_sql_primary_final AS p
WHERE
	p.payroll_year IN (2006,2018)
	AND 
	p.food_name IN ('Mléko polotučné pasterované','Chléb konzumní kmínový') 
GROUP BY 
	p.payroll_year, p.food_price, p.food_name, p.value, p.unit  
ORDER BY 
	p.food_name;