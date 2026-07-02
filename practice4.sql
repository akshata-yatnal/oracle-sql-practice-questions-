-- Q31 WAQTD ename, dname and salary for employees in Sales department earning more than their department average
        SELECT E.ENAME,D.DNAME,E.SAL
        FROM EMP E JOIN DEPT d
        ON E.DEPTNO=D.DEPTNO
        WHERE D.DNAME='SALES' AND E.SAL> (SELECT AVG(E1.SAL)
                                          FROM EMP E1
                                          WHERE E.DEPTNO = E1.DEPTNO);
-- Q32 WAQTD ename, dname and hiredate for employees hired in the same year as their manager
       SELECT E.ENAME,D.DNAME,E.HIREDATE
       FROM EMP E JOIN DEPT D 
       ON E.DEPTNO = D.DEPTNO JOIN EMP E1
       ON E.MGR=E1.EMPNO
       WHERE EXTRACT(YEAR FROM E.HIREDATE) = EXTRACT(YEAR FROM E1.HIREDATE);

-- Q33 WAQTD ename, dname and salary for employees earning less than the maximum salary of department 10
       SELECT E.ENAME,D.DNAME,E.SAL
       FROM EMP E JOIN DEPT D 
       ON E.DEPTNO = D.DEPTNO
       WHERE E.SAL <(SELECT MAX(SAL)
                     FROM EMP 
                     WHERE DEPTNO=10);

-- Q34 WAQTD ename, dname and job for employees working in departments without any Clerks
      SELECT e.ename,D.DNAME,E.JOB
      FROM EMP E JOIN DEPT d
      ON E.DEPTNO=D.DEPTNO
      WHERE E.DEPTNO NOT IN(SELECT  DEPTNO
                            FROM EMP 
                            WHERE E.JOB='CLERK'
                            );
      
      _ _OR
 SELECT E.ENAME, D.DNAME, E.JOB
FROM EMP E 
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE NOT EXISTS (
    SELECT 1
    FROM EMP E1
    WHERE E1.DEPTNO = E.DEPTNO
    AND E1.JOB = 'CLERK'
);

-- Q35 WAQTD ename, dname and salary of employees earning the second highest salary in the company
       SELECT E.ENAME,D.DNAME
       FROM EMP E JOIN DEPT d
       ON E.DEPTNO=D.DEPTNO
       WHERE E.SAL =(SELECT MAX(SAL)
                     FROM EMP
                     WHERE SAL<(SELECT MAX(SAL)
                                 FROM EMP));
    
-- Q36 WAQTD ename, dname and salary of employees earning the third highest salary OF THE EMPLOYEE
    SELECT E.ENAME,D.DNAME,E.SAL
    FROM EMP E JOIN DEPT D 
    ON E.DEPTNO = D.DEPTNO
    WHERE SAL=(SELECT MAX(SAL)
               FROM EMP
               WHERE SAL<(SELECT MAX(SAL)
                          FROM EMP
                          WHERE SAL<(SELECT MAX(SAL) 
                                     FROM EMP)));
-- Q37 WAQTD ename, dname and salary of employees who earn more than their manager
       SELECT E.ENAME,D.DNAME,E.SAL
       FROM EMP E JOIN DEPT d
       on e.deptno=d.deptno join emp e1
       on e.mgr=e1.empno
       where e.sal>e1.sal;
