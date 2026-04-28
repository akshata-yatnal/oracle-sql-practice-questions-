-- Q26: Display total salary paid in each department.
        SELECT DEPTNO ,SUM(SAL)
        FROM EMP
        GROUP BY DEPTNO;
  
-- Q27: Display average salary in each department.
        SELECT DEPTNO,AVG(SAL)
        FROM EMP
        GROUP BY DEPTNO;
-- Q28: Display number of employees in each department.
        SELECT DEPTNO,COUNT(*)
        FROM EMP
        GROUP BY DEPTNO;
    
-- Q29: Display maximum salary in each department.
        SELECT DEPTNO,MAX(SAL)
        FROM EMP
        GROUP BY DEPTNO;
-- Q30: Display minimum salary in each department.
        SELECT DEPTNO,MIN(SAL)
        FROM EMP
        GROUP BY DEPTNO;