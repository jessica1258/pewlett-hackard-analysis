-- Create new table for retiring employees
SELECT employees.emp_no, first_name, last_name, titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
left join titles on titles.emp_no = employees.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no;

-- Check the table
SELECT * FROM retirement_titles;
