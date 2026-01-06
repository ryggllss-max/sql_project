

SELECT *
FROM (
    SELECT
        p.payroll_year , 
        avg(avg_salary_cz) AS avg_salary,
        avg(food_price) AS avg_price,
        LAG(avg(avg_salary_cz)) OVER (ORDER BY p.payroll_year ) AS prev_salary,
        LAG(avg(food_price)) OVER (ORDER BY p.payroll_year ) AS prev_price
    FROM t_daniel_rygl_project_sql_primary_final AS p
    GROUP BY p.payroll_year 
) t
WHERE prev_salary IS NOT NULL
  AND ((avg_price - prev_price) / prev_price * 100)
      - ((avg_salary - prev_salary) / prev_salary * 100) > 10;