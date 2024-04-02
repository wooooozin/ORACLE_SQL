-- JOIN

-- 두 개 이상의 테이블에 있는 컬럼의 값을 한번에 가져오기 위해 사용하는 것이 조인
-- select 컬럼명 from 테이블 1, 테이블 2
-- 두 개 이상의 테이블을 조인하게 되면 다대 다 관계로 가져와 테이블1의 로우의 수 곱하기 테이블2의 로우수만큼 로우를 가져온다.
-- 공통 조건을 가져와야 함

-- 사원 테이블과 부서 테이블을 조인
SELECT *
FROM emp e, dept d
WHERE e.deptno = d.deptno;

-- 사원의 사원번호, 이름, 근부무서 이름을 가져온다.
SELECT e.empno, e.ename, d.dname 
FROM emp e, dept d
WHERE e.deptno = d.deptno;

-- 사원의 사원번호, 이름, 근무지역
SELECT e.empno, e.ename, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno;

-- DALLAS에 근무하고 있는 사원들의 사원번호, 이름, 직무를 가져온다.
SELECT e.empno, e.ename, e.job, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND d.loc = 'DALLAS';

-- SALES 부서에 근무하고 있는 사원들의 급여 평균
SELECT AVG(sal)
FROM emp e, dept d
WHERE e.deptno = d.deptno 
AND d.deptno = 30;

-- 1982년에 입사한 사원들의 사원번호, 이름, 입사일, 근무부서 이름
SELECT e.empno,  e.ename, e.hiredate, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.hiredate between '1982/01/01' AND '1982/12/31';

-- 각 사원들의 사원번호, 이름, 급여, 급여 등급
SELECT e.empno, e.ename, e.sal, s.grade
FROM emp e, salgrade s
WHERE e.sal between s.losal AND s.hisal;

-- salse 부서에 근무하고 있는 사원의 사원번호, 이름, 급여등급
SELECT e.empno, e.ename, s.grade, d.dname
FROM emp e, dept d, salgrade s
WHERE e.deptno = d.deptno
AND d.dname = 'SALES'
AND e.sal between s.losal AND s.hisal;

-- 각 급여 등급별 급여의 총합과 평균, 사원의 수, 최대급여, 최소 급여
SELECT s.grade, SUM(e.sal), TRUNC(AVG(e.sal)), COUNT(e.sal), MAX(e.sal), MIN(e.sal)
FROM emp e, salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal
GROUP BY s.grade;

-- 급여 등급이 4등급인 사원들의 번호, 이름, 급여, 부서이름, 지역
SELECT s.grade, e.empno, e.ename, e.sal, d.dname, d.loc
FROM emp e, salgrade s, dept d
WHERE e.sal BETWEEN s.losal AND s.hisal
AND e.deptno = d.deptno
AND s.grade = 4;



