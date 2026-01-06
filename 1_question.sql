
SELECT
	p.payroll_year,
	p.industry_code, 
	p.industry_name ,
	round(avg(p.avg_salary_cz ::numeric), 2) AS avg_year_salary
FROM t_daniel_rygl_project_sql_primary_final AS p
GROUP BY 
	p.payroll_year, p.industry_code, p.industry_name 
ORDER BY 
	 p.industry_code, p.payroll_year;
