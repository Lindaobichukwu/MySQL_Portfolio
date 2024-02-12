--QUESTION 1

SELECT first_name, last_name
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE employee_id = 163
                

--QUESTION 2

SELECT first_name, last_name, department_id, job_id
FROM employees
WHERE job_id = (SELECT job_id
                   FROM employees
                   WHERE employee_id = 169)
	
--QUESTION 3

SELECT first_name, last_name, department_id,salary
FROM employees
WHERE salary IN (SELECT MIN(salary)
                FROM employees
                GROUP BY department_id)

--QUESTION 4

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > (SELECT avg(salary)
                FROM employees)
                
--QUESTION 5

SELECT first_name, last_name, employee_id, salary
FROM employees
WHERE manager_id = (SELECT employee_id
                    FROM employees
                    WHERE first_name = 'Payam')

    