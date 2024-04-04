
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
SELECT e1.empno, e1.ename, e2.ename
FROM emp e1, emp e2
WHERE e1.mgr = e2.empno
AND e1.mgr = (SELECT mgr FROM emp WHERE ename = 'ALLEN');

-- WARD와 같은 부서에 근무하고있는 사워늗ㄹ의 사원번호, 이름, 부서번호를 가져온다
SELECT empno, ename, deptno
FROM emp
WHERE deptno = (SELECT deptno FROM emp WHERE ename='WARD');

-- SALESMAN의 평균 급여보다 많이 받는 사우너들이ㅡ 사원번호, 이름 , 급여
SELECT ename, empno, sal
FROM emp
WHERE sal > (SELECT AVG(sal) FROM emp WHERE job = 'SALESMAN');

-- DALLAS 지역에 근무하고 있는 사원들의 평균 급여
SELECT TRUNC(AVG(sal))
FROM emp
WHERE deptno = (SELECT deptno FROM dept WHERE loc='DALLAS');

-- SALES 부서에 근무하는 사원들의 사원번호, 이름, 근무지역을 가져온다.
SELECT e.empno, e.ename, d.loc
FROM emp e, dept d
WHERE e.deptno = d.deptno and e.deptno = (SELECT deptno FROM dept WHERE dname = 'SALES');

SELECT empno, ename, job
FROM emp
WHERE deptno = (SELECT deptno FROM dept WHERE loc='CHICAGO')
AND mgr = (SELECT empno FROM emp WHERE ename='BLACKE');


