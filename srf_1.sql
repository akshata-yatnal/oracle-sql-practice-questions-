-- SINGLE ROW FUNCTIONS:

-- 1. LENGTH()
-- SYNTAX: LENGTH('string')

-- Q1 LIST ALL THE NAMES THAT HAVE EXACTLY 4 CHARACTER WITHOUT USING LIKE OPERATOR
      SELECT ENAME
      FROM EMP
      WHERE LENGTH(ENAME)=4;

-- WITH USING LIKE OPERATOR
     select ENAME
     FROM EMP 
     WHERE ENAME LIKE '____';
      
-- Q2 LIST THE NAME OF THE EMP ALONG WITH THEIR SALARY IF EMPLOYEES EARN 3-DIGIT SALARY
      SELECT ENAME,SAL
      FROM EMP
      WHERE SAL LIKE '___';
      --OR
      SELECT ENAME,SAL
      FROM EMP
      WHERE LENGTH(SAL)=3;

-- Q3 LIST ALL THE NAMES ALONG WITH THEIR LENGTH FOR ALL THE MANAGERS
      select distinct e1.ename,LENGTH(e2.ename)
      from emp e1 join emp e2
      ON e1.mgr=e2.EMPNO;



-- 2. CONCAT()
-- SYNTAX: CONCAT('string1', 'string2')

-- Q1 WAQTD THE OUTPUT IN THE FOLLOWING FORMAT:
--    i. hello smith.
          select CONCAT('hello ','smith') from dual;
          --or
          SELECT 'hello' || 'smith' 
FROM dual;
--    ii. hai allen how are you?
           select CONCAT('hai allen how are',' you?') from dual;

             --or


-- 3. UPPER()
-- SYNTAX: UPPER('string')


-- 4. LOWER()
-- SYNTAX: LOWER('string')


-- 5. INITCAP()
-- SYNTAX: INITCAP('string')


-- 6. REVERSE()
-- SYNTAX: REVERSE('string')

-- Q1 WAQTD THE NAMES THAT ARE A PALINDROME
   select ename 
   from emp
   where ename=REVERSE(ename);


-- 1. LENGTH()
-- SYNTAX: LENGTH('string')

-- Q1 LIST ALL THE NAMES THAT HAVE EXACTLY 4 CHARACTERS
select ename
from emp
where ename like '____';
--or
select ename
from emp
where length(ename)=4;

