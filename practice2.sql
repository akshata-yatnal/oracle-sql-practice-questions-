-- Q11 WAQTD ename, dname and commission for employees who do not receive commission, earn above 1000 and whose job starts with 'A'
     SELECT E1.ENAME,E2.DNAME,E1.COMM
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE E1.COMM IS NULL AND E1.SAL>1000 AND E1.JOB LIKE 'A%'; 
-- Q12 WAQTD ename, dname and salary for employees in Accounting department earning above 1500 but not equal to 3000
     SELECT E1.ENAME,E1.SAL,E2.DNAME
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE DNAME='ACCOUNTING' AND SAL> 1500 AND SAL!=3000;
-- Q13 WAQTD ename, dname and location for employees working in locations containing letter 'O', earning between 2000 and 4000 and working as Analyst
     SELECT E1.ENAME,E2.DNAME,E2.LOC
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE (E2.LOC LIKE '%O%') AND (E1.SAL BETWEEN 2000 AND 4000) AND E1.JOB='ANALYST';

-- Q14 WAQTD ename, dname and job for employees working as Clerk or Manager and earning between 1500 and 3500
     SELECT E1.ENAME,E1.JOB,E2.DNAME
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE E1.JOB IN('CLERK','MANAGER') 
     AND E1.SAL BETWEEN 1500 AND 3500;
-- Q15 WAQTD ename, dname and salary for employees earning above 1000 and working in Sales or Research departments
     SELECT E1.ENAME,E1.SAL,E2.DNAME
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE E1.SAL>1000 AND E2.DNAME IN('SALES','RESEARCH');

-- Q16 WAQTD ename, dname and hiredate for employees hired before 1983, earning above 2000 and not working as Clerk
     SELECT E1.ENAME,E1.hiredate,E2.DNAME
     FROM EMP E1 JOIN DEPT E2
     ON E1.DEPTNO=E2.DEPTNO
     WHERE E1.hiredate < '31-DEC-1983'
     AND E1.SAL>2000 AND E1.JOB !='CLERK';

-- Q17 WAQTD ename, dname and salary for employees in Sales department whose salary is not less than any employee of department 30
     SELECT E1.ENAME,E1.SAL,E2.DNAME
     FROM EMP E1 join DEPT E2
     ON E1.DEPTNO = E2.DEPTNO
     WHERE E2.DNAME='SALES' AND E1.SAL>=ALL(SELECT SAL 
                                           FROM EMP
                                          WHERE DEPTNO=30);

-- Q18 WAQTD ename, dname and job for employees whose job has 'A' as second letter, earning above 1500 and not working in Dallas
SELECT E1.ENAME,E2.DNAME,E1.JOB
FROM EMP E1 JOIN DEPT E2
ON E1.DEPTNO =E2.DEPTNO
WHERE JOB LIKE '_A%' AND SAL >1500 AND LOC!='DALLAS';
_ _OR 

SELECT ENAME,DNAME,JOB
FROM EMP E1 JOIN DEPT E2
ON E1.DEPTNO =E2.DEPTNO
WHERE SUBSTR(e1.job,2,1)='A' AND SAL>1500 AND LOC!='DALLAS';

-- Q19 WAQTD ename, dname and commission for employees receiving commission, earning between 1000 and 3000 and working in departments ending with 'S'
        SELECT E1.ENAME,E2.DNAME,E1.COMM 
        FROM EMP E1 JOIN DEPT E2
        ON E1.DEPTNO=E2.DEPTNO
        WHERE E1.COMM IS NOT NULL AND E1.SAL BETWEEN 1000 AND 3000 AND SUBSTR(E2.DNAME,-1,1)='S';
-- Q20 WAQTD ename, dname and salary for employees earning more than some Clerks but less than all Managers
      SELECT E1.ENAME,E2.DNAME,E1.SAL 
      FROM EMP E1 JOIN DEPT E2
      ON E1.DEPTNO=E2.DEPTNO
      WHERE E1.SAL> any(SELECT SAL
                       FROM EMP
                       WHERE JOB= 'CLERK')
                        AND 
                        E1.SAL< ALL(SELECT SAL
                                   FROM EMP
                                    WHERE JOB='MANAGER');