--Q1. Employee name + Department name (include no dept)
SELECT E.ENAME, D.DNAME
FROM EMP E
LEFT JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
--Q2. Employee name + Manager name (include no manager)
SELECT E.ENAME, M.ENAME AS MANAGER
FROM EMP E
LEFT JOIN EMP M
ON E.MGR = M.EMPNO;
--Q3. All departments + number of employees (including 0)
SELECT D.DEPTNO, D.DNAME, COUNT(E.EMPNO) AS EMP_COUNT
FROM DEPT D
LEFT JOIN EMP E
ON D.DEPTNO = E.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;
🧠 Important here:

-- COUNT(E.EMPNO) → counts only employees
-- Dept with no employees → count = 0 ✅

--Q4. Employee name + Department + Location (include missing dept)
SELECT E.ENAME, D.DNAME, D.LOC
FROM EMP E
LEFT JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;