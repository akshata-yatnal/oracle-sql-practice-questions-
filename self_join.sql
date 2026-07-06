-- Q1 WAQTD name of the employee and his manager's name if employee is working as clerk
SELECT E.ENAME,M.ENAME
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO
WHERE E.JOB='CLERK';
-- Q2 WAQTD name of the employee and manager's designation if manager works in dept 10 or 20
SELECT E.ENAME,M.ENAME,M.JOB
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO
WHERE M.DEPTNO IN(10,20); 
-- Q3 WAQTD name of the employee and manager's salary if both employee and manager earn more than 2300
SELECT E.ENAME,M.ENAME,M.JOB
FROM EMP E JOIN EMP M 
ON E.MGR=M.EMPNO
WHERE E.SAL>2300 AND M.SAL >2300;
-- Q4 WAQTD employee name and manager's hiredate if employee was hired before 1982
SELECT E.ENAME,M.HIREDATE
FROM EMP E JOIN EMP M 
ON E.MGR=M.EMPNO
WHERE E.HIREDATE < '1-JAN-1982';


-- Q5 WAQTD employee name and manager's comm if employee works as salesman and manager works in dept 30
SELECT E.ENAME,M.COMM
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO
WHERE E.JOB='SALESMAN' AND M.DEPTNO=30;

-- Q6 WAQTD employee name and manager name and their salaries if employee earns more than manager
SELECT E.ENAME,M.ENAME,M.SAL
FROM EMP E JOIN EMP M 
ON E.MGR=M.EMPNO
WHERE E.SAL>M.SAL;

-- Q7 WAQTD employee name and hiredate, manager name and hiredate if manager was hired before employee
SELECT E.ENAME,E.HIREDATE,M.ENAME,M.HIREDATE
FROM EMP E JOIN EMP M 
ON E.MGR=M.EMPNO
WHERE M.HIREDATE<E.HIREDATE;
-- Q8 WAQTD employee name and manager name if both are working in same job
SELECT E.ENAME,M.ENAME
FROM EMP E JOIN EMP M 
ON E.MGR=M.EMPNO
WHERE E.JOB=M.JOB;

-- Q9 WAQTD employee name and manager name if manager is working as manager
SELECT E.ENAME,M.ENAME
FROM EMP E JOIN EMP M
ON E.MGR=M.EMPNO
WHERE M.JOB='MANAGER';
-- Q10 WAQTD employee name and manager name along with their annual salaries if employee works in dept 10 or 20 and manager's salary is greater than employee's salary.
        SELECT E.ENAME,M.ENAME,M.SAL*12,E.SAL*12
        FROM EMP E JOIN EMP M 
        ON E.MGR=M.EMPNO
        WHERE E.DEPTNO IN(10,20) AND (M.SAL > E.SAL);
-- Q11 WAQTD employee's name and manager's designation for all the employees
       SELECT E.ENAME,M.JOB
       FROM EMP E JOIN EMP M 
       ON E.MGR=M.EMPNO;

-- Q12 WAQTD employee's name and manager's salary for all the employees if manager's salary is greater than employee's salary
        SELECT E.ENAME,M.SAL
        FROM EMP E JOIN EMP M
        ON E.MGR=M.EMPNO
        WHERE M.SAL>E.SAL;