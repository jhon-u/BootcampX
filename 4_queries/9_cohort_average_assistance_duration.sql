SELECT avg(averages) as average_total_duration
FROM (
  SELECT sum(completed_at - started_at) as averages
  FROM assistance_requests 
  JOIN students ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) as averages;