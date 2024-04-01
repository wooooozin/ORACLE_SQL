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
SELECT e3.ename, e3.empno, e3.job
FROM emp e1, emp e2, emp e3
WHERE e1.ename = 'SMITH'
AND e1.mgr = e2.mgr
AND e2.job = e3.job;