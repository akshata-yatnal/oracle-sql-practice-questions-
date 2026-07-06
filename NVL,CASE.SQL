-- =========================================
 NVL + CASE IMPORTANT QUESTIONS
-- =========================================

-- Q1. WAQTD name and total salary (SAL + COMM), treat NULL as 0
SELECT ENAME, NVL(SAL,0) + NVL(COMM,0) AS TOTAL_SAL
FROM EMP;

-- Q2. WAQTD employees whose salary is NULL (treat NULL as 0 and check = 0)
SELECT ENAME
FROM EMP
WHERE NVL(SAL,0) = 0;

-- Q3. WAQTD categorize salary:
--     >=5000 → HIGH
--     >=2000 → MEDIUM
--     ELSE → LOW
SELECT ENAME, SAL,
       CASE
           WHEN SAL >= 5000 THEN 'HIGH'
           WHEN SAL >= 2000 THEN 'MEDIUM'
           ELSE 'LOW'
       END AS CATEGORY
FROM EMP;

-- Q4. WAQTD employee name and salary status:
--     NULL → 'NO SALARY'
--     NOT NULL → 'HAS SALARY'
SELECT ENAME,
       CASE
           WHEN SAL IS NULL THEN 'NO SALARY'
           ELSE 'HAS SALARY'
       END AS STATUS
FROM EMP;

-- Q5. WAQTD employee name and salary type:
--     EVEN → 'EVEN SAL'
--     ODD → 'ODD SAL'
SELECT ENAME, SAL,
       CASE
           WHEN MOD(SAL,2) = 0 THEN 'EVEN SAL'
           ELSE 'ODD SAL'
       END AS TYPE
FROM EMP;

-- =========================================
-- 🔥 EXTRA IMPORTANT (HIGH CHANCE)
-- =========================================

-- Q6. WAQTD annual salary, if SAL is NULL treat as 0
SELECT ENAME, NVL(SAL,0)*12 AS ANNUAL_SAL
FROM EMP;

-- Q7. WAQTD commission status:
--     NULL → 'NO COMMISSION'
--     NOT NULL → 'HAS COMMISSION'
SELECT ENAME,
       CASE
           WHEN COMM IS NULL THEN 'NO COMMISSION'
           ELSE 'HAS COMMISSION'
       END AS COMM_STATUS
FROM EMP;

-- Q8. WAQTD bonus:
--     SAL > 3000 → 10% of SAL
--     ELSE → 5% of SAL
SELECT ENAME, SAL,
       CASE
           WHEN SAL > 3000 THEN SAL*0.10
           ELSE SAL*0.05
       END AS BONUS
FROM EMP;

-- =========================================
-- FINAL imp POINTS
-- =========================================

-- NVL(col, value) → replaces NULL
-- CASE → conditional logic (IF-ELSE)
-- NULL check → use IS NULL (not =)
-- Use NVL in calculations to avoid NULL result