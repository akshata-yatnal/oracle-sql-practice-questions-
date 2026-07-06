-- Q11 Write a query to display the name of the employee earning maximum salary.
select ename 
from emp
where sal=(select max(sal) from emp);

-- Q12 Write a query to display the name of the employee earning minimum salary.
SELECT ENAME 
FROM EMP
WHERE SAL=(SELECT MIN(SAL)
FROM EMP); 

-- Q13 Write a query to display name and hiredate of the employee hired first.
SELECT ENAME,HIREDATE
FROM EMP
WHERE SAL=(SELECT MIN(SAL) FROM EMP);
-- Q14 Write a query to display name and hiredate of the employee hired last.
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE=(SELECT MAX(HIREDATE) FROM EMP);
-- Q15 Write a query to display name and commission of the employee who earns minimum commission.
SELECT ENAME,COMM
FROM EMP
WHERE COMM=(SELECT MIN(COMM) FROM EMP);
-- Q16 Write a query to display name, salary, and commission of the employee earning maximum commission.
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM=(SELECT MAX(COMM) FROM EMP);

-- Q17 Write a query to display details of the employee who has the greatest EMPNO.
SELECT * FROM EMP
WHERE EMPNO=(SELECT MAX(EMPNO) FROM EMP);
-- Q18 Write a query to display details of the employee having the earliest hiredate.
SELECT * FROM EMP 
WHERE HIREDATE =(SELECT MIN(HIREDATE) FROM EMP);

-- Q19 Write a query to display details of the employees earning the least annual salary.
SELECT * FROM EMP 
WHERE SAL*12=(SELECT MIN(SAL*12) FROM EMP);
-- Q20 Write a query to display name and annual salary of employees whose annual salary is more than all the SALESMAN.
SELECT ENAME,SAL*12, FROM EMP
WHERE SAL*12> any(SELECT SAL FROM EMP
WHERE JOB=SALESMAN);