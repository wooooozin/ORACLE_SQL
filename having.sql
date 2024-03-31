-- HAVING
-- GROUP BY로 묶인 각 그룹들 중에 실제 가져올 그룹을 선택할 족너을 having절에 작성
-- Having은 Group By절의 조건이 됨

-- 부서별 평균 급여가 2000이상인 부서의 급여 평균
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING AVG(sal) >= 2000;

-- 부서별 최대 급여액이 3000이하인 부서의 급여 총합을 가져온다.
SELECT deptno, SUM(sal)
FROM emp
GROUP BY deptno
HAVING MAX(sal) >= 3000;

-- 부서별 최소 급여액이 1000 이하인 부서에서 직무가 CLERK 인 사원들의 급여 총합
SELECT  deptno, SUM(sal)
FROM emp
WHERE job = 'CLERK'
GROUP BY deptno
HAVING MIN(sal) <= 1000;

-- 각 부서의 급여 최소가 900 이상, 최대가 10000 이하인 부서 사원들 중 1500 이상의 급여를 받는 사원들의 평균 급여액
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
HAVING MIN(sal) >= 900 AND MAX(sal) <= 10000;
