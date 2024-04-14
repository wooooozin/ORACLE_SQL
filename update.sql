
-- UPDATE
DROP TABLE emp01;

CREATE TABLE emp01
AS
SELECT * FROM emp; 

UPDATE emp01
SET deptno = 40;

UPDATE emp01
SET hiredate = SYSDATE;

-- 사원들 직무를 개발자로 변경
UPDATE emp01
SET job = 'dev';

-- 사원들의 부서 번호를 40, 입사일을 오늘, 직무를 개발자로 변경
UPDATE emp01
SET deptno = 40, hiredate = SYSDATE, job = 'dev';

UPDATE emp01
SET deptno = 40
WHERE deptno = 10
;


UPDATE emp01
SET hiredate = SYSDATE, comm = 2000
WHERE job = 'SALESMAN';

-- 전체 사원의 평균 급여보다 낮은 사원들의 급여를 50프로 인상
UPDATE emp01
SET sal = sal * 1.5
WHERE sal < (
            SELECT AVG(sal)
            FROM emp01
            );

-- MANAGER 사원들의 직무를 디벨로퍼로 변경
UPDATE emp01
SET job = 'DEVELOPER'
WHERE job = 'MANAGER';

UPDATE emp01
SET sal = (SELECT TRUNC(AVG(sal)) fROM emp01)
WHERE deptno = 30;

UPDATE emp01
SET deptno = (SELECT deptno FROM dept WHERE loc = 'DALLAS')
WHERE mgr = (SELECT empno FROM emp01 WHERE ename = 'BLAKE');

UPDATE emp01
SET mgr = (SELECT empno FROM emp01 WHERE ename = 'KING')
, sal = (SELECT MAX(sal) FROM emp01)
WHERE deptno = 20;


-- 직무가 CLERCK 인 사원들의 직무와 급여액을 20번 부서에 근무하고 있는 사원 중 급여 최고액을 받는 사원의 직무와 급여액으로 변경
UPDATE emp01
SET (job, sal) = (SELECT job, sal
FROM emp01
WHERE sal = (SELECT MAX(sal) FROM emp01))
WHERE job = 'CLERK';
   
SELECT job, sal
FROM emp01
WHERE sal = (SELECT MAX(sal) FROM emp01);
   

SELECT *
FROM emp01;


