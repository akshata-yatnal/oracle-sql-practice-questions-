-- ================================
--  SINGLE ROW QUESTIONS
-- ================================

-- Q1. Write a query to display employee names whose name length is greater than 5.
       SELECT ENAME
       FROM EMP
       WHERE LENGTH(ENAME)>5;
-- Q2. Write a query to display employee names along with the first 3 characters of their name.
      SELECT ENAME, SUBSTR(ENAME,1,3) FROM EMP;
-- Q3. Write a query to display employee names where the second character is 'A'.
     SELECT ENAME
     FROM EMP
     WHERE ENAME LIKE '_A%';

-- Q4. Write a query to display employee names where 'A' is present in their name.
       SELECT ENAME
       FROM EMP
       WHERE INSTR(ENAME,'A',1,1)>0;

-- Q5. Write a query to replace all 'A' characters in employee names with '$'.
      SELECT REPLACE(ENAME,'A','$')
      FROM EMP;

-- Q6. Write a query to display employee names in uppercase and lowercase.
     SELECT UPPER(ENAME),LOWER(ENAME)
     FROM EMP;

-- Q7. Write a query to display employee names and salary, 
--     and if salary is NULL, display 0 instead.
      SELECT ENAME, NVL(SAL,0) AS SALARY
FROM EMP;

-- Q8. Write a query to display employee names and commission, 
--     if commission is NULL display 'NO COMMISSION' else display 'HAS COMMISSION'.
     SELECT ENAME,
       CASE 
           WHEN COMM IS NULL THEN 'NO COMMISSION'
           ELSE 'HAS COMMISSION'
       END AS COMM_STATUS
FROM EMP;


-- Q9. Write a query to display employee names and categorize salary:
--     If salary > 3000 → 'HIGH'
--     If salary between 1500 and 3000 → 'MEDIUM'
--     Else → 'LOW'
          SELECT ENAME, SAL,
       CASE
           WHEN SAL > 3000 THEN 'HIGH'
           WHEN SAL BETWEEN 1500 AND 3000 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS SAL_CATEGORY
FROM EMP;
        
-- Q10. Write a query to display even numbered records from EMP table.
       SELECT *
       FROM EMP
       WHERE MOD(ROWNUM,2)=0;

-- Q11. Write a query to display employee names where the last character is 'N'.
        SELECT ENAME
        FROM EMP
        WHERE SUBSTR(ENAME,-1,1)='N';

-- Q12. Write a query to display employee names where the first and last character are same.
       SELECT ENAME
       FROM EMP
       WHERE SUBSTR(ENAME,1,1)= SUBSTR(ENAME,-1,1);