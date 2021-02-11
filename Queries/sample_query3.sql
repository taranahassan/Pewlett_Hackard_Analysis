--number of positions each employee held
SELECT COUNT (me.emp_no), me.emp_no
FROM mentorship_eligibility1 as me
GROUP BY me.emp_no
ORDER BY count DESC; 

