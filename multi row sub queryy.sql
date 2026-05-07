-- Q1 Write a query to display the names of the employees earning more than SCOTT in the ACCOUNTING department.
   SELECT ENAME
   FROM EMP
   WHERE SAL>(SELECT DEPTNO 
   FROM EMP
   WHERE ENAME='SCOTT') AND 
   DEPTNO=(SELECT DEPTNO 
   FROM DEPT
   WHERE DNAME='ACCOUNTING');
-- Q2 Write a query to display details of the employees working as MANAGER in the location CHICAGO.
   SELECT * FROM EMP
   WHERE JOB IN(SELECT JOB FROM EMP
   WHERE JOB='MANAGER') AND DEPTNO=(SELECT DEPTNO FROM DEPT
   WHERE LOC='CHICAGO');
  
-- Q3 Write a query to display name and salary of the employees earning more than KING in the ACCOUNTING department.
   SELECT ENAME,SAL
   FROM EMP
   WHERE SAL>(SELECT SAL 
   FROM EMP
   WHERE ENAME='KING') AND
   DEPTNO=(SELECT DEPTNO
   FROM DEPT
   WHERE DNAME='ACCOUNTING')

-- Q4 Write a query to display details of the employees working as SALESMAN in the SALES department.
   SELECT * FROM EMP
   WHERE JOB='SALESMAN' AND 
   DEPTNO IN (SELECT DEPTNO
   FROM DEPT
   WHERE DNAME='SALES');

-- Q5 Write a query to display name, salary, job, and hiredate of the employees working in the OPERATIONS department and hired before KING.
   SELECT ENAME,SAL,JOB,HIREDATE
   FROM EMP
   WHERE DEPTNO=(SELECT DEPTNO 
   FROM DEPT
   WHERE DNAME='OPERATION')
   AND HIREDATE<(SELECT HIREDATE 
   FROM EMP 
   WHERE ENAME='KING');
-- Q6 Display all the employees whose department name ends with 'S'.
___   SELECT * FROM EMP
   WHERE DEPTNO IN(SELECT DEPTNO
   FROM DEPT
   WHERE DNAME='%S');

-- Q7 Write a query to display DNAME of the employees whose names contain the character 'A'.
   SELECT DNAME 
   FROM DEPT
   WHERE DEPTNO IN(SELECT DEPTNO 
   FROM EMP
   WHERE ENAME='%A%');

-- Q8 Write a query to display DNAME and LOC of the employees whose salary is 800.
SELECT DNAME,LOC FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO 
FROM EMP
WHERE SAL=800);

-- Q9 Write a query to display DNAME of the employees who earn commission.
SELECT DNAME 
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO
FROM EMP
WHERE COMM IS NOT NULL); 
-- Q10 Write a query to display LOC of the employees if they earn commission in department 40.
SELECT LOC 
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO 
FROM EMP
WHERE COMM IS NOT NULL) AND
DEPTNO=(SELECT DEPTNO
FROM EMP
WHERE DEPTNO=40);