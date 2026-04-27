-- Q11: Display employees whose salary is greater than 2000.
         SELECT *
         FROM EMP
         WHERE SAL>2000;
        
-- Q12: Display employees working in department 30.
        SELECT *
        FROM EMP
        WHERE DEPTNO=30;
-- Q13: Display employees whose job is MANAGER.
        SELECT *
        FROM EMP 
        WHERE JOB='MANAGER';
-- Q14: Display employees hired after 1981.
        SELECT *
        FROM EMP
        WHERE HIREDATE>'31-DEC-1981';
        --or
        SELECT *
        FROM EMP
        WHERE HIREDATE > TO_DATE('31-DEC-1981','DD-MON-YYYY');
-- Q15: Display employees whose salary is less than 1500.
        SELECT *
        FROM EMP
        WHERE SAL<1500;
-- Q16: Display employees working in department 10.
        SELECT *
        FROM EMP
        WHERE DEPTNO=10;
-- Q17: Display employees whose commission is not null.
        SELECT *
        FROM EMP
        WHERE COMM IS NOT NULL;
-- Q18: Display employees whose job is CLERK.
        SELECT *
        FROM EMP
        WHERE JOB='CLERK';
-- Q19: Display employees whose salary is between 1000 and 3000.
        SELECT *
        FROM EMP
        WHERE SAL BETWEEN 1000 AND 3000;
-- Q20: Display employees whose department number is 20.
        SELECT * FROM EMP
        WHERE DEPTNO=20;