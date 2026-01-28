use university;
CREATE TABLE employees1 (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

INSERT INTO employees1 (emp_id, emp_name, department, salary, hire_date)
VALUES
(1, 'Amit',  'IT',       70000, '2020-03-15'),
(2, 'Neha',  'HR',       50000, '2021-06-10'),
(3, 'Rahul', 'Finance',  80000, '2019-11-25'),
(4, 'Pooja', 'IT',       65000, '2022-01-05'),
(5, 'Kiran', 'HR',       48000, '2023-02-18');
-- ascending order --

SELECT * FROM employees1
ORDER BY salary ASC;

-- descending order --

SELECT * FROM employees1
ORDER BY salary DESC;

-- multiple of both asc and desc --

SELECT * FROM employees1
ORDER BY department asc,salary DESC;

-- limit clause --

SELECT * FROM employees1
ORDER BY salary DESC
LIMIT 3;

-- limit with order by --

SELECT * FROM employees1
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;

-- offcet for pagination --
SELECT * FROM employees1
ORDER BY emp_id
LIMIT 5 OFFSET 1;

--  leaderboard style query --

SELECT emp_name, department, salary
FROM employees1
ORDER BY salary DESC
LIMIT 5;

-- null values --

SELECT * FROM employees1
where  salary is  NULL;
