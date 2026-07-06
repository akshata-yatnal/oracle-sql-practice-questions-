-- 1. WAQTD employee details where SAL is NULL
      SELECT *
      FROM EMP
      WHERE SAL IS NULL;

-- 2. WAQTD employee details where SAL is NOT NULL
    SELECT *
    FROM EMP
    WHERE SAL IS NOT NULL;
-- 3. WAQTD unique salaries from EMP table
     SELECT DISTINCT SAL FROM EMP;

-- 4. WAQTD employees whose commission is NULL
    SELECT *
    FROM EMP
    WHERE COMM IS NULL;

-- 5. WAQTD employees whose name starts with 'S'
      SELECT *
      FROM EMP
      WHERE ENAME LIKE 'S%';

-- 6. WAQTD employees whose name contains 'A'
   SELECT *
   FROM EMP 
   WHERE ENAME LIKE'%A%';

-- 7. WAQTD employees whose name ends with 'H'
     SELECT *
     FROM EMP
     WHERE ENAME LIKE '%H'


-- 8. WAQTD employees whose name has exactly 4 characters
      SELECT *
      FROM EMP
      WHERE ENAME LIKE '____';

-- 9. WAQTD employee name and their manager name
      SELECT E1.ENAME,E2.ENAME
      FROM EMP E1 JOIN EMP E2
      ON E1.MGR =E2.EMPNO;



-- 10. WAQTD employees who do not have manager
       SELECT *
       FROM EMP
       WHERE MGR IS NULL;

-- 11. WAQTD employees who work under same manager
       SELECT *
       FROM EMP
       WHERE MGR IN(SELECT MGR 
                  FROM EMP 
                  GROUP BY MGR
                  HAVING COUNT(*)>1)
       
-- 12. WAQTD employee, manager, manager’s manager names
       SELECT E1.ENAME,E2.ENAME,E3.ENAME
       FROM EMP E1 JOIN EMP E2 
       ON E1.MGR=E2.EMPNO JOIN EMP E3
       ON E2.MGR=E3.EMPNO;


-- 13. WAQTD even records from EMP table
    select *
    from emp
    where maod(rownum,2)=0;
   
-- 14. WAQTD odd records from EMP table
      select *
      from emp
      where mod(rownum,2)=1;
-- 15. WAQTD to:
--     a) Insert a record into EMP table
          insert into emp(eid,ename,sal)
          values(10023,smith,28555)
--     b) Update salary where ename = 'SMITH'
          update emp
          set sal= 38000
          where ename='SMITH';
--     c) Delete employees where deptno = 30
          delete from emp
          where deptno=30;