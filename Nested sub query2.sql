-- Q11 WAQTD Smith's reporting manager's name
SELECT ENAME
FROM EMP
WHERE EMPNO=(SELECT MGR
           FROM EMP
           WHERE ENAME='SMITH');


-- Q12 WAQTD Adams manager's manager name
SELECT ename
FROM EMP
WHERE EMPNO=(SELECT MGR
             FROM EMP
             WHERE EMPNO=(SELECT MGR
                         FROM EMP
                         WHERE ENAME='ADAMS'));


-- Q13 WAQTD DNAME of Jones manager
SELECT DNAME FROM DEPT
WHERE DEPTNO=(SELECT DEPTNO 
              FROM EMP
              WHERE EMPNO=(SELECT MGR 
                           FROM EMP
                           WHERE ENAME='JONES'));

-- Q14 WAQTD Miller's manager's salary
SELECT SAL
FROM EMP
WHERE EMPNO=(SELECT MGR 
             FROM EMP
             WHERE ENAME='MILLER');

-- Q15 WAQTD LOC of Smith's manager's manager
SELECT LOC FROM DEPT
WHERE EMPNO=(SELECT MGR 
             FROM EMP
             WHERE EMPNO=(SELECT MGR
                       FROM EMP
                       WHERE ENAME='SMITH' ));

-- Q16 WAQTD names of the employees reporting to Blake
SELECT ENAME 
FROM EMP
WHERE MGR=(SELECT EMPNO
           FROM EMP
           WHERE ENAME='BLAKE');


-- Q17 WAQTD number of employees reporting to King
SELECT COUNT(*) 
FROM EMP
WHERE MGR=(SELECT EMPNO
           FROM EMP
           WHERE ENAME='KING');

-- Q18 WAQTD details of the employees reporting to Jones
SELECT * FROM EMP
WHERE MGR=(SELECT EMPNO 
           FROM EMP
           WHERE ENAME='JONES');

-- Q19 WAQTD enames of the employees reporting to Blake's manager
SELECT ENAME
FROM EMP
WHERE MGR = (SELECT MGR
             FROM EMP
             WHERE ENAME = 'BLAKE');


-- Q20 WAQTD number of employees reporting to Ford's manager
SELECT COUNT(*)
FROM EMP
WHERE MGR = (SELECT MGR
             FROM EMP
             WHERE ENAME = 'FORD');