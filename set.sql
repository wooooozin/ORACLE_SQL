-- SET
-- UNION (중복 제외)
-- UNION ALL (중복  포함)
-- INTERSECT
-- MINUS


-- 10 부서에 근무하고 있는 사원의 사원번호, 이름, 직무, 근무부서 번호
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno = 10
AND d.deptno = e.deptno;

-- 직무가 CLERK인 사원의 사원번호, 이름 직무 그누무서 번호
SELECT e.empno, e.ename, e.job, d.dname, d.deptno
FROM emp e, dept d
WHERE e.job = 'CLERK'
AND d.deptno = e.deptno;

-- UNION
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno = 10
AND d.deptno = e.deptno
UNION -- ALL 
SELECT e.empno, e.ename, e.job, d.deptno, d.dname
FROM emp e, dept d
WHERE e.job = 'CLERK'
AND d.deptno = e.deptno;

-- INTERSECT
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno = 10
AND d.deptno = e.deptno
INTERSECT
SELECT e.empno, e.ename, e.job, d.deptno, d.dname
FROM emp e, dept d
WHERE e.job = 'CLERK'
AND d.deptno = e.deptno;


-- MINUS
SELECT e.empno, e.ename, e.job, e.deptno, d.dname
FROM emp e, dept d
WHERE e.deptno = 10
AND d.deptno = e.deptno
MINUS
SELECT e.empno, e.ename, e.job, d.deptno, d.dname
FROM emp e, dept d
WHERE e.job = 'CLERK'
AND d.deptno = e.deptno;