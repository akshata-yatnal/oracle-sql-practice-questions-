-- Q21 WAQTD ename, dname and salary for employees earning more than the average salary of their department
       SELECT E1.ENAME,E2.DNAME,E1.SAL
       FROM EMP E1 JOIN DEPT E2
       ON E1.DEPTNO=E2.DEPTNO
       WHERE E1.SAL> IN(SELECT AVG(SAL)
                        FROM DEPT); 
-- Q22 WAQTD dname and count of employees in each department having more than 3 employees
      SELECT COUNT(*),D.DNAME
      FROM EMP E JOIN DEPT D
      ON E.DEPTNO=D.DEPTNO 
      GROUP BY D.DNAME
      HAVING COUNT(*)>3;

-- Q23 WAQTD ename, dname and hiredate for employees who are the earliest hired in each department
SELECT E.ENAME,D.DNAME,E.HIREDATE
FROM EMP E JOIN DEPT D
ON E.DEPTNO=D.DEPTNO
WHERE E.HIREDATE =(SELECT MIN(HIREDATE)
                 FROM EMP
                 GROUP BY D.DNAME);

-- Q24 WAQTD ename, dname and salary for employees earning the highest salary in their department
       SELECT E.ENAME,D.DNAME,E.SAL
       FROM EMP E JOIN DEPT D
       ON E.DEPTNO=D.DEPTNO
       WHERE E.SAL=(SELECT MAX(E1.SAL)
                    FROM EMP E1
                    WHERE E.DEPTNO=E1.DEPTNO);
-- Q25 WAQTD ename, dname and salary of employees earning the lowest salary in their department
       SELECT E.ENAME,D.DNAME,E.SAL
       FROM EMP E JOIN DEPT D 
       ON E.DEPTNO=D.DEPTNO
       WHERE E.SAL=(SELECT MIN(E1.SAL) 
                    FROM EMP e1
                    WHERE E1.DEPTNO=E.DEPTNO);
-- Q26 WAQTD ename, dname and job of employees who are managers of at least one employee
SELECT e.ename,d.dname,e.job
from emp e join emp e1
on e1.mgr=e.empno
inner join dept.D
on e.deptno=d.deptno;
-- Q27 WAQTD ename, dname and salary of employees who earn more than all employees of department 10
       SELECT E.ENAME,E.SAL,D.DNAME
       FROM EMP E JOIN DEPT d
       ON E.DEPTNO=D.DEPTNO
       WHERE E.SAL> ALL(SELECT E1.SAL
                        FROM EMP E1
                        WHERE DEPTNO=10);

-- Q28 WAQTD ename, dname and hiredate of employees who were hired before their manager    
       SELECT E.ENAME,D.DNAME,E.HIREDATE
       FROM EMP E JOIN EMP M
       ON E.MGR=M.EMPNO JOIN DEPT D 
       ON E.DEPTNO=D.DEPTNO
       WHERE E.HIREDATE<M.HIREDATE;
-- Q29 WAQTD ename, dname and salary of employees whose salary is equal to the minimum salary of the company
        SELECT E.ENAME,D.DNAME,E.SAL
        FROM EMP E  JOIN DEPT d
        ON E.DEPTNO=D.DEPTNO
        WHERE E.SAL=(SELECT MIN(E1.SAL)
                     FROM EMP E1);
-- Q30 WAQTD dname and number of employees receiving commission in each department
      SELECT  D.DNAME,COUNT(*)
      FROM EMP E JOIN DEPT d
      ON E.DEPTNO=D.DEPTNO
      WHERE COMM IS NOT NULL
      GROUP BY D.DNAME;
      