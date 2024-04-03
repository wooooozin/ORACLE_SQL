
-- sub query

-- SCOTT ㅅㅏ원이 근무하는 부서의 이름
SELECT dname
FROM dept
WHERE deptno = 
    (
    SELECT deptno
    FROM emp
    WHERE ename = 'SCOTT'
    )
    ;

SELECT d.dname
FROM dept d, emp e
WHERE d.deptno = e.deptno AND e.ename = 'SCOTT';
    
-- SMITH와 같은 부서에 근무하고 있는 사람들의 사원번호, 이름, 급여액 , 부서이름
SELECT e.empno, e.ename, e.sal, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno
AND e.deptno = 
                (SELECT deptno
                FROM emp
                WHERE ename = 'SMITH'
                );
                
-- MARTIN과 같은 직무를 가지고 있는 사원들의 사원번호, 이름 , 직무
SELECT empno, ename, job
FROM emp
WHERE job = (SELECT job FROM emp WHERE ename = 'MARTIN');

-- ALLEN과 같은 직속상관을 가진 사원들의 사원번호, 이름, 직속상관이름


