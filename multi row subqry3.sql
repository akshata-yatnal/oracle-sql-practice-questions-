-- Q21 WAQTD name of the employees earning salary more than the salesman
SELECT ENAME
FROM EMP
WHERE SAL> ANY(SELECT SAL
FROM EMP
WHERE JOB='SALESMAN');

-- Q22 WAQTD details of the employees hired after all the clerks
SELECT * FROM EMP
WHERE HIREDATE> ANY(SELECT HIREDATE
FROM EMP
WHERE JOB='CLERK');

-- Q23 WAQTD name and salary for all the employees if they are earning less than atleast a manager
SELECT ENAME,SAL
FROM EMP
WHERE SAL<=ANY(SELECT SAL 
FROM EMP
WHERE JOB='MANAGER');

-- Q24 WAQTD name and hiredate of employees hired before all the managers
SELECT ENAME,HIREDATE
FROM EMP
WHERE HIREDATE< ANY(SELECT HIREDATE
FROM EMP
WHERE JOB='MANAGER');

-- Q25 WAQTD names of the employees hired after all the managers and earning salary more than all the clerks
SELECT ENAME
FROM EMP
WHERE HIREDATE> ANY(SELECT HIREDATE 
FROM EMP
WHERE JOB='MANAGER') AND SAL> ANY(SELECT SAL
FROM EMP
WHERE JOB='CLERK');

-- Q26 WAQTD details of the employees working as clerk and hired before atleast a salesman
SELECT * FROM EMP
WHERE JOB='CLERK' AND HIREDATE< ANY(SELECT HIREDATE
FROM EMP
WHERE JOB='SALESMAN');

-- Q27 WAQTD details of employees working in accounting or sales dept
SELECT * FROM EMP
WHERE DEPTNO=(SELECT DEPTNO
FROM DEPT
WHERE DNAME='ACCOUNTING') OR DEPTNO=(SELECT DEPTNO
FROM DEPT
WHERE DNAME='SALES');

-- Q28 WAQTD department names of the employees with name SMITH, KING and MILLER
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO
FROM EMP
WHERE ENAME='SMITH') OR
DEPTNO=(SELECT DEPTNO
FROM EMP
WHERE ENAME='KING') OR
DEPTNO=(SELECT DEPTNO
FROM EMP
WHERE ENAME='MILLER');

-- Q29 WAQTD details of employees working in NEWYORK or CHICAGO
SELECT * FROM EMP
WHERE DEPTNO IN(SELECT DEPTNO
FROM DEPT
WHERE LOC='NEWYORK') OR
DEPTNO=(SELECT DEPTNO
FROM DEPT
WHERE LOC='CHICAGO'); 


-- Q30 WAQTD emp names if employees are hired after all the employees of dept 10
SELECT ENAME
FROM EMP
WHERE HIREDATE> ANY(SELECT HIREDATE
FROM EMP
WHERE DEPTNO=10);
