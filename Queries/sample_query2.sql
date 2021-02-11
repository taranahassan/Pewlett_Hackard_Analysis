--employee count by department and title
SELECT COUNT (rd.dept_name), rd.dept_name, rd.title
--INTO total_by_dept
FROM retirees_by_dept as rd
GROUP BY rd.dept_name, rd.title
ORDER BY count DESC;
