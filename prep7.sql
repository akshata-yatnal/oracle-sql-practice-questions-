-- ================================
-- MOST IMPORTANT TO_CHAR QUESTIONS
-- ================================

-- Q1. Write a query to display employee name and hire date 
--     in the format 'DD-MM-YYYY'.

-- Q2. Write a query to display employee name and the month 
--     in which they were hired (in words, e.g., JAN, FEB).

-- Q3. Write a query to display employee name and the year 
--     in which they were hired.

-- Q4. Write a query to display all employees who were hired in 1981.

-- Q5. Write a query to display all employees who were hired in the month of DECEMBER.

-- Q6. Write a query to display employee name and the day 
--     on which they were hired (e.g., MONDAY).

-- Q7. Write a query to display employee name and hire date 
--     in the format 'DAY, DD-MON-YYYY'.

-- Q8. Write a query to display employee name and salary 
--     prefixed with '₹' symbol.

-- Q9. Write a query to display employee name and salary 
--     with two decimal places.

-- Q10. Write a query to display employees hired on MONDAY.

-- Q11. Write a query to display employees hired in the first quarter 
--      (JAN, FEB, MAR).

-- Q12. Write a query to display employee name and hire date 
--      in full month format (e.g., JANUARY).


-- ================================
-- MOST IMPORTANT TO_CHAR QUESTIONS
-- ================================

-- Q1. Display employee name and hire date in 'DD-MM-YYYY'
SELECT ENAME, TO_CHAR(HIREDATE, 'DD-MM-YYYY') FROM EMP;

-- Q2. Display employee name and hired month (JAN, FEB)
SELECT ENAME, TO_CHAR(HIREDATE, 'MON') FROM EMP;

-- Q3. Display employee name and hired year
SELECT ENAME, TO_CHAR(HIREDATE, 'YYYY') FROM EMP;

-- Q4. Display employees hired in 1981
SELECT * FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') = '1981';

-- Q5. Display employees hired in DECEMBER
SELECT * FROM EMP
WHERE TO_CHAR(HIREDATE, 'MONTH') LIKE 'DECEMBER%';

-- Q6. Display employee name and day of hiring (MONDAY)
SELECT ENAME, TO_CHAR(HIREDATE, 'DAY') FROM EMP;

-- Q7. Display employee name and hire date in 'DAY, DD-MON-YYYY'
SELECT ENAME, TO_CHAR(HIREDATE, 'DAY, DD-MON-YYYY') FROM EMP;

-- Q8. Display employee name and salary with ₹ symbol
SELECT ENAME, TO_CHAR(SAL, '₹99999') FROM EMP;

-- Q9. Display employee name and salary with 2 decimal places
SELECT ENAME, TO_CHAR(SAL, '99999.00') FROM EMP;

-- Q10. Display employees hired on MONDAY
SELECT * FROM EMP
WHERE TO_CHAR(HIREDATE, 'DAY') LIKE 'MONDAY%';

-- Q11. Display employees hired in first quarter (JAN, FEB, MAR)
SELECT * FROM EMP
WHERE TO_CHAR(HIREDATE, 'MON') IN ('JAN','FEB','MAR');

-- Q12. Display employee name and full month (JANUARY)
SELECT ENAME, TO_CHAR(HIREDATE, 'MONTH') FROM EMP;