-- ================================
-========

-- Q1. Write a query to display the number of employees and the average salary 
--for each department, but only for departments where the average salary is greater than 2000.
    SELECT COUNT(*),AVG(SAL)
    FROM EMP
    GROUP BY DEPTNO
    HAVING HAVING SAL>2000;



-- Q2. Write a query to display the number of employees hired in each month, 
--     excluding 'MON'.
--     Note: If 'MON' means Monday use 'DY', if it means March use 'MON'.
       SELECT COUNT(*)

-- Q3. Write a query to display the top 2 highest salaries in each dep-artment.
     

-- ================================
-
-- ================================

-- Q4. Write a query to display employee name, their manager's name, 
--     and their manager's manager name.
        SELECT E1.ENAME,E2.ENAME,E3.ENAME
         FROM EMP E1 INNER JOIN EMP E2
         ON E1.MGR=E2.EMPNO INNER JOIN EMP E3
         ON E2.MGR=E3.EMPNO;



      
-- Q5. Write a query to display employee name, manager name, and manager's manager name 
--     for all employees who work in the SALES department and have a salary between 1000 and 3000.
        SELECT E1.ENAME,E2.ENAME,E3.ENAME
         FROM EMP E1 INNER JOIN EMP E2
         ON E1.MGR=E2.EMPNO INNER JOIN EMP E3
         ON E2.MGR=E3.EMPNO
         WHERE 


-- Q6. Write a query to display customer name and product name where the first character 
--     of the product name is the same as the last character of the customer name.
 
-- Q7. Write a query to display the number of employees who directly report to KING.


-- ================================
--
-- ================================

-- Q8. Write a query to find the 3rd highest salary from the employee table.
       SELECT SAL
       FROM (SELECT ROWNUM SINO,SAL
             FROM (SELECT DISTICT SAL
                   FROM EMP
                   ORDER BY SAL DESC))

        WHERE SINO=3;

-- Q9. Write a query to find the 5th highest salary from the employee table.
      SELECT SAL
       FROM (SELECT ROWNUM SINO,SAL
             FROM (SELECT DISTICT SAL
                   FROM EMP
                   ORDER BY SAL DESC))

        WHERE SINO=5;

-- ================================

-- Q10. Explain DML (Data Manipulation Language) and list its commands.

-- Q11. Write the syntax for DML operations: INSERT, UPDATE, DELETE.

-- Q12. Write the correct syntax for the BETWEEN operator.

-- Q13. Explain the difference between Primary Key and Foreign Key.


-- ================================
-- 
-- ================================

-- Q14. Write a query to display employee name, manager name, 
--      and manager's manager name.
     SELECT E1.ENAME,E2.ENAME,E3.ENAME
     FROM EMP E1 INNER JOIN EMP E2
     ON E1.MGR=E2.EMPNO INNER JOIN EMP E3
     ON E2.MGR=E3.EMPNO;

-- Q15. Write a query to display Smith's manager's manager.
      SELECT E3.ENAME
      FROM EMP E1 INNER JOIN EMP E2
      ON E1.MGR=E2.EMPNO INNER JOIN EMP E3
      ON E2.MGR=E3.EMPNO;


-- ================================
--
-- ================================

-- Q16. Write a query to display even numbered records from the EMP table.
--      Hint: Use ROWNUM or a numeric column.
        SELECT *
        FROM EMP
        WHERE MOD(ROWNUM,2)=0;
-- Q17. Write a query to display employee name, department name, and location 
--      where the location contains 'o' without using LIKE.
     SELECT E1.ENAME,D1.DNAME,D1.LOC
     FROM EMP E1 JOIN DEPT D1
     ON E1.DEPTNO=D1.DEPTNO
     WHERE INSTR(D.LOC,'O',1,1)>0;

-- Q18. Write a query to display details of employees whose salary is duplicated.
    SELECT *
    FROM EMP
    GROUP BY SAL
    HAVING COUNT(*)>1;
 ----
 ---????
 -- ================================
-- CORRECTED MOCK ANSWERS
-- ================================

-- Q1. No. of employees & avg salary per dept where avg > 2000
SELECT DEPTNO, COUNT(*), AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL) > 2000;

------------------------------------------------------------

-- Q2. No. of employees hired in each month (excluding MONDAY)
SELECT TO_CHAR(HIREDATE,'MON') MONTH, COUNT(*)
FROM EMP
WHERE TO_CHAR(HIREDATE,'DY') <> 'MON'
GROUP BY TO_CHAR(HIREDATE,'MON');

------------------------------------------------------------

-- Q3. Top 2 highest salaries in each department
SELECT *
FROM (
    SELECT DEPTNO, SAL
    FROM EMP E1
    WHERE 2 > (
        SELECT COUNT(DISTINCT SAL)
        FROM EMP E2
        WHERE E2.DEPTNO = E1.DEPTNO
        AND E2.SAL > E1.SAL
    )
);

------------------------------------------------------------

-- Q4. Employee, Manager, Manager's Manager
SELECT E1.ENAME EMP, E2.ENAME MANAGER, E3.ENAME MGR_MANAGER
FROM EMP E1
JOIN EMP E2 ON E1.MGR = E2.EMPNO
JOIN EMP E3 ON E2.MGR = E3.EMPNO;

------------------------------------------------------------

-- Q5. Same as Q4 but SALES dept & salary between 1000 and 3000
SELECT E1.ENAME, E2.ENAME, E3.ENAME
FROM EMP E1
JOIN EMP E2 ON E1.MGR = E2.EMPNO
JOIN EMP E3 ON E2.MGR = E3.EMPNO
JOIN DEPT D ON E1.DEPTNO = D.DEPTNO
WHERE D.DNAME = 'SALES'
AND E1.SAL BETWEEN 1000 AND 3000;

------------------------------------------------------------

-- Q6. Customer last char = Product first char
SELECT C.CNAME, P.PNAME
FROM CUSTOMER C, PRODUCT P
WHERE SUBSTR(C.CNAME, -1) = SUBSTR(P.PNAME, 1, 1);

------------------------------------------------------------

-- Q7. No. of employees reporting to KING
SELECT COUNT(*)
FROM EMP
WHERE MGR = (SELECT EMPNO FROM EMP WHERE ENAME = 'KING');

------------------------------------------------------------

-- Q8. 3rd highest salary
SELECT SAL
FROM (
    SELECT ROWNUM RN, SAL
    FROM (
        SELECT DISTINCT SAL
        FROM EMP
        ORDER BY SAL DESC
    )
)
WHERE RN = 3;

------------------------------------------------------------

-- Q9. 5th highest salary
SELECT SAL
FROM (
    SELECT ROWNUM RN, SAL
    FROM (
        SELECT DISTINCT SAL
        FROM EMP
        ORDER BY SAL DESC
    )
)
WHERE RN = 5;

------------------------------------------------------------

-- Q10. DML Definition
-- DML (Data Manipulation Language) is used to manipulate data in tables.
-- Commands: INSERT, UPDATE, DELETE

------------------------------------------------------------

-- Q11. DML Syntax
-- INSERT:
INSERT INTO EMP VALUES (...);

-- UPDATE:
UPDATE EMP
SET SAL = 3000
WHERE EMPNO = 7369;

-- DELETE:
DELETE FROM EMP
WHERE EMPNO = 7369;

------------------------------------------------------------

-- Q12. BETWEEN Syntax
SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

------------------------------------------------------------

-- Q13. PK vs FK
-- PRIMARY KEY:
-- Uniquely identifies each row, cannot be NULL

-- FOREIGN KEY:
-- Refers to primary key of another table, allows duplicates

------------------------------------------------------------

-- Q14. Same as Q4
SELECT E1.ENAME, E2.ENAME, E3.ENAME
FROM EMP E1
JOIN EMP E2 ON E1.MGR = E2.EMPNO
JOIN EMP E3 ON E2.MGR = E3.EMPNO;

------------------------------------------------------------

-- Q15. Smith's manager's manager
SELECT E3.ENAME
FROM EMP E1
JOIN EMP E2 ON E1.MGR = E2.EMPNO
JOIN EMP E3 ON E2.MGR = E3.EMPNO
WHERE E1.ENAME = 'SMITH';

------------------------------------------------------------

-- Q16. Even records
SELECT *
FROM (
    SELECT ROWNUM RN, EMP.*
    FROM EMP
)
WHERE MOD(RN,2) = 0;

------------------------------------------------------------

-- Q17. Location contains 'o' (no LIKE)
SELECT E.ENAME, D.DNAME, D.LOC
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE INSTR(UPPER(D.LOC),'O') > 0;

------------------------------------------------------------

-- Q18. Employees with duplicate salary
SELECT *
FROM EMP
WHERE SAL IN (
    SELECT SAL
    FROM EMP
    GROUP BY SAL
    HAVING COUNT(*) > 1
);