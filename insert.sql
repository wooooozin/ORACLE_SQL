-- INSERT
DROP TABLE emp01;

CREATE TABLE emp01
AS
SELECT e.empno, e.ename, d.dname
FROM emp e, dept d
WHERE e.deptno = d.deptno 
AND 1 = 0;

SELECT *
FROM emp01; 

-- 1111 홍길동 인사
-- 2222 김길동 개발
-- 3333 최길동 인사
-- 4444 김루피 생산
INSERT INTO emp01 (empno, ename, job)
VALUES (1111, '홍길동', '인사');

INSERT INTO emp01 (empno, ename, job)
VALUES (2222, '김길동', '개발');

INSERT INTO emp01 (empno, ename, job)
VALUES (3333, '최길동', '인사');

INSERT INTO emp01 (empno, ename, job)
VALUES (4444, '김루피', '생산');


INSERT INTO emp01
VALUES (5555, '김사랑', '마케팅');

INSERT INTO emp01 (empno, ename) -- job => null
VALUES (6666, '효키');

-- 서브쿼리로 데이터 저장하기
INSERT INTO emp01 (empno, ename, job)
SELECT empno, ename, job FROM emp;

-- 서브쿼리로 여러 테이블에 삽입

INSERT ALL 
    INTO emp02 (empno, ename, job) 
VALUES (empno, ename, job)
INTO emp03 (empno, ename, job, hiredate) 
VALUES (empno, ename, job, hiredate)
SELECT empno, ename, job, hiredate 
FROM emp;


-- 사원번호 이름 급여를 저장할 수 있는 빈 테이블 만들기
-- 급여가 1500 이상인 사원들의 사원번호, 이름, 급여를 저장
INSERT INTO emp01
SELECT empno, ename, sal, job
FROM emp
WHERE sal >= 1500;

-- 사원번ㄹ호, 이름, 부서명을 저장할 수 있는 빈테이블
-- 달라스 지역에 근무하고 있는 사원들의 사원번호, 이름, 부서명저장
INSERT INTO emp01
SELECT e.empno, e.ename, d.dname
FROM emp e, dept d
WHERE d.loc = 'DALLAS'
AND d.deptno = e.deptno;

SELECT dname
FROM dept
WHERE loc = 'DALLAS';
