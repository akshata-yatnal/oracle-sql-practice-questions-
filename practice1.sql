-- Q1 WAQTD name and salary of all employees
SELECT ENAME,SAL
FROM EMP;

-- Q2 WAQTD name, job and salary of all employees working as Clerk
   SELECT ENAME,JOB,SAL
   FROM EMP
   WHERE JOB='CLERK';

-- Q3 WAQTD name and salary of employees earning more than 2000
SELECT ENAME,SAL
FROM EMP
WHERE SAL>2000;

-- Q4 WAQTD name and department number of employees working in department 10
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO=10;

-- Q5 WAQTD name and salary of employees earning between 1000 and 3000
SELECT ENAME,SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

-- Q6 WAQTD name and job of employees whose job starts with 'M'
SELECT ENAME,JOB
FROM EMP
WHERE JOB LIKE 'M%';

-- Q7 WAQTD name and hiredate of employees hired after 1981
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE>'31-DEC-1981';

-- Q8 WAQTD name and salary of employees who do not receive commission
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NULL;
-- Q9 WAQTD name and salary of employees working as Manager or Analyst
SELECT ENAME,SAL
FROM EMP
WHERE JOB='MANAGER' OR JOB='ANALYST';

-- Q10 WAQTD name, salary and department number of employees whose salary is not equal to 3000
SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE SAL !=3000;


