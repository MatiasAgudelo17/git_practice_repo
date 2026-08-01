SELECT job_via, COUNT(*) AS job_quantity
FROM job_postings_fact
WHERE job_title_short = 'Data Engineer'
GROUP BY job_via
HAVING COUNT(*) > 2_000
ORDER BY COUNT(*) DESC;