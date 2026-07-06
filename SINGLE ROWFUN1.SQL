-- Q1 WAQTD names of the employees if the name starts with 'A', 'S', 'T'
      SELECT ENAME 
      FROM EMP
      WHERE SUBSTR(ENAME,1,1) IN('A','S','T');

-- Q2 WAQTD extract first 3 characters of each name
      SELECT SUBSTR(ENAME,1,3) FROM EMP;
-- Q3 WAQTD first half of employee names
      SELECT SUBSTR(ENAME,1,LENGTH(ENAME)/2) FROM EMP;
-- Q4 WAQTD to extract second half of employee name
      SELECT SUBSTR(ENAME,LENGTH(ENAME)/2+1) 
      FROM EMP;
-- Q5 List the names of the employees if their name's 3rd character is 'A'
      SELECT ENAME
      FROM EMP
      WHERE SUBSTR(ENAME,3,1)='A';

-- Q6 WAQTD the names leaving the first and the last character
      SELECT ENAME,SUBSTR(ENAME,2,LENGTH(ENAME)-2)
      FROM EMP;

-- Q7 WAQTD names of the employees by reversing the second half of the name (ex: SMITH → SMHTI)
      SELECT ENAME,
       SUBSTR(ENAME,1,LENGTH(ENAME)/2) ||
       REVERSE(SUBSTR(ENAME,LENGTH(ENAME)/2 + 1)) AS RESULT
FROM EMP;

-- Q8 WAQTD names of the employees by reversing the first and the second half (ex: SMITH → MSHTI)
      

-- Q9 WAQTD details of the employees if string 'MAN' is present as first 3 characters in their designations

-- Q10 WAQTD details of the employees if string 'MAN' is present as last 3 characters in their designations