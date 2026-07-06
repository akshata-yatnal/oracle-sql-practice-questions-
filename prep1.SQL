-- 1. WAQTD employees whose SAL is NULL and COMM is NOT NULL
    SELECT *
    FROM EMP
    WHERE SAL IS NULL AND COMM IS NOT NULL;

-- 2. WAQTD distinct DEPTNO from EMP table
      SELECT DISTINCT DEPTNO FROM EMP;

-- 3. WAQTD employees whose name starts with 'A' and ends with 'S'
      SELECT * 
      FROM EMP
      WHERE ENAME LIKE 'A%S';

-- 4. WAQTD employees whose name has 'A' as second character
      SELECT *
      FROM EMP
      WHERE ENAME LIKE '_A%';

-- 5. WAQTD employees whose name does NOT contain 'E'
      SELECT *
      FROM EMP
      WHERE ENAME  NOT LIKE '%E%';

-- 6. WAQTD employee name and manager name (display as EMP, MANAGER)
      SELECT E1.ENAME AS EMP,E2.ENAME AS MANAGER
      FROM EMP E1 JOIN EMP E2
      ON E1.MGR=E2.EMPNO;

-- 7. WAQTD employees who are managers (i.e., they manage someone)
     SELECT ENAME 
     FROM EMP
     WHERE EMPNO IN(SELECT MGR 
                    FROM EMP
                    WHERE MGR IS NOT NULL); 
    
-- 8. WAQTD employees who are NOT managers
      SELECT ENAME
      FROM EMP 
      WHERE EMPNO NOT IN(SELECT MGR 
                         FROM EMP
                         WHERE MGR IS NOT NULL);
    

-- 9. WAQTD employees working under same manager (show only names)
       SELECT E1.ENAME
       FROM EMP E1
       WHERE E1.MGR IN(SELECT MGR
                       FROM EMP
                       WHERE MGR IS NOT NULL
                       GROUP BY MGR
                       HAVING COUNT(*)>1);
-- 10. WAQTD employee, manager, manager’s manager names
    SELECT E1.ENAME,E2.ENAME,E3.ENAME
    FROM EMP E1
     JOIN EMP E2 ON E1.MGR=E2.EMPNO
     JOIN EMP E3 ON E2.MGR=E3.EMPNO;

-- 11. WAQTD first 3 records from EMP
     SELECT *
     FROM EMP
     WHERE ROWNUM<=3;


-- 12. WAQTD last 3 records from EMP
      SELECT *
      FROM (SELECT ROWNUM SINO,EMP.*
            FROM EMP)
            WHERE SINO>(SELECT COUNT(*)-3
                        FROM EMP);

-- 13. WAQTD even records from EMP
       SELECT *
       FROM (SELECT ROWNUM SINO,EMP.*
             FROM EMP)
             WHERE MOD(SINO,2)=0;
     

-- 14. WAQTD odd records from EMP
       SELECT *
       FROM (SELECT ROWNUM SINO,EMP.*
             FROM EMP)
             WHERE MOD(SINO,2)=1;


-- 15. WAQTD to:

-- a) insert employee with only ENAME and SAL
INSERT INTO EMP (ENAME, SAL)
VALUES ('AKSHATA', 40000);

-- b) update COMM = 500 where DEPTNO = 20
UPDATE EMP
SET COMM = 500
WHERE DEPTNO = 20;

-- c) delete employees whose SAL < 1000
DELETE FROM EMP
WHERE SAL < 1000;