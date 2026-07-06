-- Q1 WAQTD 2nd minimum salary
SELECT MIN(SAL)
FEOM EMP 
WHERE SAL>(SELECT MIN(SAL)
           FROM EMP);
-- Q2 WAQTD 5th maximum salary
SELECT MAX(SAL)
FROM EMP
WHERE SAL<(SELECT MAX(SAL)
           FROM EMP
           WHERE SAL<(SELECT MAX(SAL)
                     FROM EMP
                     WHERE SAL<(SELECT MAX(SAL)
                                      FROM EMP
                                      WHERE SAL<(SELECT MAX(SAL) FROM EMP))));


-- Q3 WAQTD name of the employee earning 3rd maximum salary
SELECT ENAME FROM EMP
WHERE SAL=(SELECT MAX(SAL) FROM EMP
            WHERE SAL<(SELECT MAX(SAL)
                       FROM EMP
                       WHERE SAL<(SELECT MAX(SAL)
                                  FROM EMP)));

-- Q4 WAQTD empno of the employee earning 2nd maximum salary
SELECT EMPNO FROM EMP
WHERE SAL=(SELECT MAX(SAL)
           FROM EMP
           WHERE SAL<(SELECT MAX(SAL) FROM EMP));

-- Q5 WAQTD department name of the employee getting 4th maximum salary
SELECT DNAME FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO FROM EMP
WHERE SAL<(SELECT MAX(SAL)
          FROM EMP
          WHERE SAL<(SELECT MAX(SAL)
                    FROM EMP
                    WHERE SAL<(SELECT MAX(SAL)
                              FROM EMP
                              WHERE SAL<(SELECT MAX(SAL)
                                        FROM EMP)))));

-- Q6 WAQTD details of the employee who was hired 2nd
SELECT * FROM EMP
WHERE HIREDATE =(SELECT MIN(HIREDATE) FROM EMP
WHERE HIREDATE>(SELECT MIN(HIREDATE) FROM EMP));


-- Q7 WAQTD name of the employee hired before the last employee
SELECT ENAME 
FROM EMP
WHERE HIREDATE=(SELECT MAX(HIREDATE)
               FROM EMP
               WHERE HIREDATE<(SELECT MAX(HIREDATE)
                             FROM EMP));

-- Q8 WAQTD loc of the employee who was hired first
SELECT LOC
FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO
                FROM EMP
WHERE HIREDATE=(SELECT MIN(HIREDATE) FROM EMP))      

-- Q9 WAQTD details of the employee earning 7th minimum salary
SELECT * FROM EMP
WHERE SAL=(SELECT MIN(SAL)
           FROM EMP
           WHERE SAL>(SELECT MIN(SAL)
           FROM EMP
                      WHERE SAL>(SELECT MIN(SAL)
                                FROM EMP
                                WHERE SAL>(SELECT MIN(SAL)
                                FROM EMP
                                            WHERE SAL>(SELECT MIN(SAL)
                                            FROM EMP
                                            WHERE SAL>(SELECT MIN(SAL)
                                            FROM EMP
                                            WHERE SAL>(SELECT MIN(SAL)
                                            FROM EMP)))))));

-- Q10 WAQTD ename of employee getting 2nd maximum salary
SELECT ENAME FROM EMP
WHERE SAL=(SELECT MAX(SAL)
           FROM EMP
           WHERE SAL<(SELECT MAX(SAL)
           FROM EMP));