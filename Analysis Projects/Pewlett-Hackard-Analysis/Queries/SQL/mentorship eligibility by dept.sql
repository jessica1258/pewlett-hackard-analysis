-- Create new table for mentorship eligibility by department
SELECT departments.dept_name,
count (Distinct employees.emp_no) as mentee_count 

---INTO dept_mentorship_count
FROM employees
left join dep_emp on dep_emp.emp_no = employees.emp_no
left Join departments on departments.dept_no = dep_emp.dept_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') and dep_emp.to_date ='9999-01-01'
group by dept_name
order by mentee_count desc;
