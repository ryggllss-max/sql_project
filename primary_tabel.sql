-- data_academy_content.t_daniel_rygl_project_sql_primary_final definition

-- Drop table

-- DROP TABLE data_academy_content.t_daniel_rygl_project_sql_primary_final;

CREATE TABLE data_academy_content.t_daniel_rygl_project_sql_primary_final (
	payroll_year int8 NULL,
	industry_code bpchar(1) NULL,
	industry_name varchar(255) NULL,
	avg_salary_cz numeric NULL,
	"year" float8 NULL,
	food_price numeric NULL,
	food_name varchar(50) NULL,
	value float8 NULL,
	unit varchar(2) NULL
);