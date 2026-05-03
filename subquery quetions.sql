-- Q36: Display employees earning more than SMITH.
        SELECT *
        FROM EMP
        WHERE SAL > all (SELECT SAL
                    FROM EMP
                    WHERE ENAME='SMITH');
-- Q37: Display employees working in the same department as ALLEN.
        SELECT * 
        FROM EMP
        WHERE DEPTNO IN(SELECT DEPTNO
                        FROM EMP
                        WHERE ENAME='ALLEN'); 
-- Q38: Display employees whose salary is greater than the average salary.
        SELECT *
        FROM EMP
        WHERE SAL>(SELECT AVG(SAL)
                 FROM EMP);
-- Q39: Display employees hired before KING.
        SELECT *
        FROM EMP
        WHERE HIREDATE<(SELECT HIREDATE
                         FROM EMP
                         WHERE ENAME='KING');
-- Q40: Display employees earning the highest salary.
        SELECT *
        FROM EMP
        WHERE SAL=(SELECT MAX(SAL)
                   FROM EMP
                   );