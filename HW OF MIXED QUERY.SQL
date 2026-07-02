-- Q1 WAQTD dname in which there are atleast 5 employees working.
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO,ENAME
                FROM EMP
                GROUP BY DEPTNO
                  HAVING COUNT(*)>=5)
/


-- Q2 WAQTD loc ,DEPTNO in which there are exactly 3 employees working.
SELECT LOC,DEPTNO
FROM DEPT
WHERE DEPTNO IN(SELECT DEPTNO
                FROM EMP
                GROUP BY DEPTNO
                HAVING COUNT(*)=3); 

-- Q3 WAQTD details of the employees earning same salary.
SELECT * FROM EMP
WHERE SAL IN(SELECT SAL 
FROM EMP
GROUP BY SAL
HAVING COUNT(*)>1);

-- Q4 WAQTD salaries of the employees having same names.
SELECT SAL,ENAME 
FROM EMP
WHERE ENAME IN(SELECT ENAME
             FROM EMP
             GROUP BY ENAME
             HAVING COUNT(*)>1);

-- Q5 WAQTD details of the employees getting same salary in the same department.
SELECT * FROM EMP
WHERE SAL IN(SELECT SAL
             FROM EMP
             GROUP BY SAL,DEPTNO
             HAVING COUNT(*)>1);


-- Q6 WAQTD details of the employees hired on the same day into the same department.
       SELECT * 
       FROM EMP
       WHERE (DEPTNO,HIREDATE) IN (SELECT DEPTNO,HIREDATE
                                  FROM EMP
                                  GROUP BY DEPTNO,HIREDATE
                                  HAVING COUNT(*)>1);
-- Q7 WAQTD name and sal of the employees if their name is repeated atleast 4 times in employee table.
       SELECT ENAME,SAL,DEPTNO
       FROM EMP
       WHERE ENAME IN(SELECT ENAME
                      FROM EMP
                      GROUP BY ENAME
                      HAVING COUNT(*)>=4);
       
-- Q8 WAQTD details of the employees having same designations in the same department.
      SELECT * 
      FROM EMP
      WHERE (DEPTNO,JOB) IN(SELECT DEPTNO,JOB
                            FROM EMP
                            GROUP BY DEPTNO,JOB
                            HAVING COUNT(*)>1);


-- Q9 WAQTD details of the employees having same names in the same job.
       SELECT *
       FROM EMP
       WHERE (ENAME,JOB) IN (SELECT ENAME,JOB
                             FROM EMP
                             GROUP BY ENAME,JOB
                             HAVING COUNT(*)>1);

-- Q10 WAQTD details of the employee to whom atleast 3 employees report.
SELECT *
FROM EMP
WHERE EMPNO IN (
    SELECT MGR
    FROM EMP
    WHERE MGR IS NOT NULL
    GROUP BY MGR
    HAVING COUNT(*) >= 3
);