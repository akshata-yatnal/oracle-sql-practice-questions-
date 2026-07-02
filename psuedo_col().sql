-- Q1 WAQTD FIRST 2 RECORDS OF THE EMPLOYEES
      SELECT *
      FROM EMP
      WHERE ROWNUM<=2;

-- Q2 WAQTD 5th RECORD OF THE EMPLOYEE
     SELECT *
     FROM(SELECT ROWNUM SINO,EMP.*
          FROM EMP)
     WHERE SINO=5;

-- Q3 WAQTD 1st , 3rd , 5th RECORDS OF THE EMPLOYEES
      SELECT *
      FROM(SELECT ROWNUM SINO,EMP.*
      FROM EMP)
      WHERE SINO IN (1,3,5);

-- Q4 WAQTD LAST RECORD OF THE EMPLOYEES
    SELECT *
    FROM(SELECT ROWNUM SINO,EMP.*
        FROM EMP
        )
    WHERE SINO =(SELECT COUNT(*) from emp);
     --or
     SELECT *
FROM (
    SELECT EMP.*, ROW_NUMBER() OVER (ORDER BY EMPNO) AS RN
    FROM EMP
)
WHERE RN = (SELECT COUNT(*) FROM EMP);

-- Q5 WAQTD LAST RECORD OF THE EMPLOYEES
      SELECT *
    FROM(SELECT ROWNUM SINO,EMP.*
        FROM EMP)
    WHERE SINO =(SELECT COUNT(*) from emp);

-- Q6 WAQTD LAST 2 RECORDS OF THE EMPLOYEES
      SELECT *
      FROM(SELECT ROWNUM SINO,EMP.*
      FROM EMP)
      WHERE SINO>(SELECT COUNT(*)-2
                   FROM EMP);

                   --or actual

     SELECT *
FROM (
    SELECT EMP.*, ROW_NUMBER() OVER (ORDER BY EMPNO) RN
    FROM EMP
)
WHERE RN > (SELECT COUNT(*) - 2 FROM EMP);
      

-- Q7 WAQTD FIRST HALF OF THE EMPLOYEES RECORDS
      SELECT *
      FROM (SELECT ROWNUM SINO,EMP.*
            FROM EMP
            )
            WHERE SINO <= (SELECT CEIL(COUNT(*)/2)
             FROM EMP);
      

-- Q8 WAQTD LAST 25% OF THE EMPLOYEES RECORDS
     SELECT *
     FROM (SELECT ROWNUM SINO,EMP.*
           FROM EMP)
           WHERE SINO>(SELECT CEIL(COUNT(*)*75/100)
           FROM EMP);
     

-- Q9 WAQTD FIRST 25% OF THE EMPLOYEES RECORDS AND LAST 2 RECORDS
       SELECT *
       FROM (SELECT ROWNUM SINO,EMP.*
            FROM EMP)
            WHERE SINO <=(SELECT CEIL(COUNT(*)*25/100)
                         FROM EMP)
                         OR SINO>(SELECT COUNT(*)-2 
                                    FROM EMP);

-- Q10 WAQTD LAST 75% OF THE EMPLOYEES RECORDS AND FIRST RECORD OF EMPLOYEES
        SELECT *
        FROM(SELECT ROWNUM SINO,EMP.*
            FROM EMP)
            WHERE SINO >(SELECT CEIL(COUNT(*)*25/100)
                         FROM EMP) 
                         OR SINO=1;