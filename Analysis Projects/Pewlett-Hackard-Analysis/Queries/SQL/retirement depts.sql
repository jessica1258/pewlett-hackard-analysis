-- Create new table for retiring employees by department
SELECT departments.dept_name,
count (distinct employees.emp_no) as ret_employee_count
INTO retirement_depts
FROM employees
left join dep_emp on dep_emp.emp_no = employees.emp_no
left join departments ON departments.dept_no = dep_emp.dept_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
group by dept_name
order by ret_employee_count desc;

-- Check the table
SELECT * FROM retirement_depts;
