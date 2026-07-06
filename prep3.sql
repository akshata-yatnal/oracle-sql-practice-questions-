-- ================================
-- MINI MOCK TEST (Try in 20 mins)
-- ================================

-- Q1. Write a query to display department number and total salary 
--     of each department, only if total salary is greater than 5000.
      SELECT DEPTNO,SUM(SAL)
      FROM EMP
      GROUP BY DEPTNO
      HAVING SUM(SAL)>5000;

-- Q2. Write a query to display the 2nd highest salary from EMP table 
--     without using DENSE_RANK.
    SELECT SAL
    FROM(SELECT ROWNUM SINO,SAL
         FROM(SELECT DISTINCT SAL
         FROM EMP)
         ORDER BY SAL DESC)
         WHERE SINO=2;
     

-- Q3. Write a query to display employee name and their manager name.
      SELECT E1.ENAME,M1.ENAME
      FROM EMP E1 INNER JOIN EMP M1
      ON E1.MGR=M1.EMPNO;

-- Q4. Write a query to display all employees who earn more than 
--     the average salary of the company.
       SELECT EMP.*
       FROM EMP
       WHERE SAL>(SELECT AVG(SAL)
                    FROM EMP);

-- Q5. Write a query to display employees whose salary is the same 
--     as at least one other employee.
     SELECT *
FROM EMP
WHERE SAL IN (
    SELECT SAL
    FROM EMP
    GROUP BY SAL
    HAVING COUNT(*) > 1
);