 

--mzdy--

CREATE VIEW t_daniel_rygl_payroll AS
SELECT
	cp.payroll_year,
	ind.code AS industry_code, 
	ind."name" AS industry_name,
	 avg(cp.value) AS avg_salary_cz
FROM czechia_payroll AS cp 
LEFT JOIN czechia_payroll_industry_branch AS ind
	ON cp.industry_branch_code = ind.code 
 WHERE 
 	cp.value_type_code = 5958 AND cp.calculation_code = 200
 GROUP BY 
 	cp.payroll_year, ind.code, ind."name" 
 ORDER BY 
 	cp.payroll_year, ind. code;  


--zboží--

CREATE VIEW t_daniel_rygl_price AS 
SELECT
	 date_part('year'::text, pr.date_from) AS year,
	 round(avg(pr.value::numeric), 2) AS food_price, 
	 cpc.name AS food_name,
	 cpc.price_value AS value,
	 cpc.price_unit AS unit
FROM czechia_price AS pr
LEFT JOIN czechia_price_category AS cpc 
	ON cpc.code = pr.category_code 
GROUP BY	
	date_part('year'::text, pr.date_from),cpc.name, cpc. price_unit, cpc. price_value  
ORDER BY 
	date_part('year'::text, pr.date_from)
	
---vytvoření primarní tabulky--
	
CREATE TABLE t_daniel_rygl_project_SQL_primary_final AS
SELECT *
FROM t_daniel_rygl_payroll AS pay
LEFT JOIN t_daniel_rygl_price AS pri
	ON pay.payroll_year = pri."year" 
WHERE 
	pay.industry_name IS NOT NULL
	



