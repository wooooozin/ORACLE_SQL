-- self join
-- 같은 테이블을 두 번 이상 조인하는 것을 의미

-- 스미스의 사원번호, 이름, 직속상관 이름을 가져온다.
SELECT *
FROM emp;

SELECT e.empno, e.ename, h.ename 
FROM emp e, emp h
WHERE e.mgr = h.empno
AND e.ename = 'SMITH';

-- 포드 사원 밑에서 일하는 사원들의 사원번호, 이름, 직무를 가져온다
SELECT e.empno, e.ename, e.job, e.mgr, h.empno
FROM emp e, emp h
WHERE h.ename = 'FORD'
AND e.mgr = h.empno;

-- SMITH 사원의 직속상관과 동일한 직무를 가지고 있 사원들의 사원번호, 이름 , 직무 가져오기
SELECT e3.ename, e3.empno, e3.job, e1.mgr, e2.ename
FROM emp e1, emp e2, emp e3
WHERE e1.ename = 'SMITH'
AND e1.mgr = e2.empno
AND e2.job = e3.job;


-- OUTER JOIN
-- 조인 조건에 해당하지 않아 결과에 포함되지 않는 로우까지 가져오는 조인

-- 각 사원의 이름, 사원번호, 상사이름, 단 상사이름이 없는 사원도 가져온다
SELECT e1.ename, e1.empno, e2.ename
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno(+)
;

-- 모든 부서의 소속사원의 근무부서명, 사원번호, 사원이름, 급여
SELECT d.deptno, d.dname, e.empno, e.ename, e.sal
FROM dept d, emp e
WHERE d.deptno = e.deptno(+);;
