-- GROUP BY
-- 그룹 함수를 사용할 경우 조회된 결과를 하나의 그룹으로 묶어 총합, 평균 등을구할 수 있음
-- GroupBy절을 사용하면 하나의 결과를 여러 그룹으로 나눠 그룹 각각의 총합과 평균 등을 구할 수 있음

SELECT 
FROM
WHERE
GROUP BY
ORDER BY
;

-- 각 부서별 사원들의 급여 평균
SELECT deptno, AVG(sal)
FROM emp
GROUP BY deptno
;

-- 각 직무별 사원들의 급여 총합
SELECT job, SUM(sal)
FROM emp
GROUP BY job
;
