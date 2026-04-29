-- Q31: Display departments having more than 3 employees.
        SELECT DEPTNO,COUNT(*) AS DE_PT
        FROM EMP
        GROUP BY DEPTNO
        HAVING COUNT(*)>3;
-- Q32: Display departments where total salary is greater than 5000.
        SELECT DEPTNO,SUM(SAL) AS TOTAL_SAL
        FROM EMP
        GROUP BY DEPTNO
        HAVING SUM(SAL)>5000;

-- Q33: Display departments where average salary is greater than 2000.
        SELECT DEPTNO,AVG(SAL) AS AVRG_SALARY
        FROM EMP
        GROUP BY DEPTNO
        HAVING AVG(SAL)>2000;

-- Q34: Display departments having more than 2 managers.
        SELECT DEPTNO
        FROM EMP
        WHERE 'MANAGER'
        GROUP BY DEPTNO
        HAVING COUNT(*) > 2;
-- Q35: Display departments where maximum salary is greater than 3000.
        SELECT DEPTNO,MAX(SAL) AS MAX_SAL
        FROM EMP
        GROUP BY DEPTNO
        HAVING MAX(SAL)>3000;