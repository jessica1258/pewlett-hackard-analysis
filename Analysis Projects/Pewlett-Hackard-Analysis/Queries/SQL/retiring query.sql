-- Create new table for retiring employees
 SELECT title, count(distinct emp_no) as emp_count
 INTO retiring_titles
 FROM unique_titles
 group by title
 order by emp_count Desc;

-- Check the table
-- SELECT * FROM unique_titles;
