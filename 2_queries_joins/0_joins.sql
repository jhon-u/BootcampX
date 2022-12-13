/**
* INNER JOIN
*/
SELECT students.name as student_name, email, cohorts.name as cohort_name
  FROM students 
  INNER JOIN cohorts ON cohorts.id = cohort_id;

/** 
* LEFT and RIGHT
* When we write a LEFT OUTER JOIN or a RIGHT OUTER JOIN, we can omit the word OUTER. In the rest of our examples, we will omit the OUTER keyword.
* We could also rewrite any RIGHT JOIN as a LEFT JOIN, just by changing the order of the tables. So the following two queries would produce identical results:
* 1. FROM students LEFT JOIN cohorts ON cohorts.id = cohort_id;
* 2. FROM cohorts RIGHT JOIN students ON cohorts.id = cohort_id;
*/
SELECT students.name as student_name, email, cohorts.name as cohort_name
  FROM students
  RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

SELECT students.name as student_name, email, cohorts.name as cohort_name
  FROM students
  LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

SELECT students.name as student_name, email, cohorts.name as cohort_name
  FROM students
  FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;


/**
* EXAMPLE
*/
SELECT 
    students.name as student_name, 
    cohorts.name as cohort_name, 
    cohorts.start_date as cohort_start_date,
    students.start_date as student_start_date
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.start_date != students.start_date
  ORDER BY cohort_start_date;