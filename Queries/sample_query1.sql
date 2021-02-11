--filtering Mentorship Eligibile employees by department
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title,
	d.dept_name
INTO retirees_by_dept
FROM employees as e
	INNER JOIN dept_emp as de
	ON e.emp_no = de.emp_no
		INNER JOIN titles as t
		ON e.emp_no = t.emp_no
			INNER JOIN departments as d
			ON de.dept_no = d.dept_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
