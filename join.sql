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
SELECT e.empno, e.ename, e.job
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND d.loc = 'DALLAS';


