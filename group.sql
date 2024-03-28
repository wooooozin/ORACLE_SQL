-- 그룹 함수 : 셀렉트 문의 결과를 그룹으로 묶고 컬럼의 총합, 평균 등을 구
-- 사원들의 급여 총합
SELECT SUM(sal)
FROM emp;

-- 사원들의 커미션 총합, null이 아닌 값들로만 계산
SELECT SUM(comm)
FROM emp;

-- 급여 2000 이상, 사원들의 급여 총합
SELECT SUM(sal)
FROM emp
WHERE sal >= 2000
;

-- 20번 부서에 근무하고있는 사원들의 급여 총합
SELECT SUM(sal)
FROM emp
WHERE deptno=20;

-- 직무가 세일즈맨인 사원들의 급여 총합
SELECT SUM(sal)
FROM emp
WHERE job = 'SALESMAN';

-- 세일즈맨 직무 이름, 급여총합
SELECT ename, SUM(sal) AS s
FROM emp
WHERE job = 'SALESMAN'
GROUP BY ename;

-- 전 사원의 급여 평균
SELECT TRUNC(AVG(sal))
FROM emp;

-- 커미션 받는 사원들의 커미션 평균(null을 뺴고 값이 있는 것만) - 733
SELECT TRUNC(AVG(comm))
FROM emp
;

-- 전 사원의 커미션을 평균을 구함(null을 0으로 바꿔서) - 157
SELECT TRUNC(AVG(NVL(comm, 0)))
FROM emp
;

-- 커미션을 받는 사원들의 급여 평균
SELECT TRUNC(AVG(sal))
FROM emp
WHERE comm IS NOT NUll;


-- 30번 부서에 근무하고있는 사원들의 급여 평균
SELECT TRUNC(AVG(sal))
FROM emp
WHERE deptno = 30;


-- 직무가 salesman 인 사원들의 급여 + 커미션 평균
SELECT AVG(sal + comm)
FROM emp
WHERE job = 'SALESMAN';

-- 부서별 사원들의 총 수
SELECT deptno, COUNT(*)
FROM emp
GROUP BY deptno;

-- 사원들의 급여, 최대, 최솟값
SELECT MAX(sal), MIN(sal)
FROM emp;


