-- Q1. Find 2nd highest salary using DENSE_RANK
  SELECT SAL
  FROM(SELECT SAL,DENSE_RANK() OVER (ORDER BY SAL DESC)
      from emp)RK 
  WHERE RK=2;
  --
  SELECT SAL
FROM (
    SELECT SAL, DENSE_RANK() OVER (ORDER BY SAL DESC) RK
    FROM EMP
)
WHERE RK = 2;
-- Q2. Find top 3 salaries in each department
   SELECT DEPTNO,SAL
   FROM (SELECT DEPTNO,SAL, 
   DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC)RK
         FROM EMP
         )
  WHERE RK<=3;

  --
  SELECT DEPTNO, SAL
FROM (
    SELECT DEPTNO, SAL,
           DENSE_RANK() OVER (PARTITION BY DEPTNO ORDER BY SAL DESC) RK
    FROM EMP
)
WHERE RK <= 3;

-- Q3. Find employees having highest salary in each department
  SELECT  DEPTNO,SAL
  FROM (SELECT DEPTNO,SAL,
         DENSE_RANK() OVER (PARTION BY DEPTNO ORDER BY SAL DESC) RK
         FROM EMP) ;