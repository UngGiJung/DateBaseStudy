SELECT * FROM TAB

INSERT INTO DEPARTMENT (dept_id, dept_name, office)
values('920','컴퓨터공학과','201호')

SELECT * FROM DEPARTMENT


INSERT INTO department values('923','산업공학과','207호');
INSERT INTO department values('925','전자공학과','308호');


SELECT *FROM STUDENT

INSERT INTO STUDENT
	values('1292001','900424*1825409','김광식',3,'서울',920);
INSERT INTO STUDENT
	values('1292002','900305*1730021','김정현',3,'서울',920);
INSERT INTO STUDENT
	values('1292003','891021*2308302','김현정',4,'대전',920);
INSERT INTO STUDENT
	values('1292301','890902*2704012','김현정',2,'대구',923);
INSERT INTO STUDENT
	values('1292303','910715*1524390','박광수',3,'광주',923);
INSERT INTO STUDENT
	values('1292305','921011*1809003','김우주',4,'부산',923);
INSERT INTO STUDENT
	values('1292501','900825*1506390','박철수',3,'대전',925);
INSERT INTO STUDENT
	values('1292502','911011*1809003','백태성',3,'서울',925);


SELECT *FROM professor

insert into professor 
	values('92001', '590327*1839240', '이태규', '920', '교수', 1997)
	
insert into professor 
	values('92002', '690702*1350026', '고희석', '920', '부교수', 2003)
	
insert into professor 
	values('92301', '741011*2765501', '최성희', '923', '부교수', 2005)
	
insert into professor 
	values('92302', '750728*1102458', '김태석', '923', '교수', 1999)
	
insert into professor 
	values('92501', '620505*1200546', '박철재', '925', '조교수', 2007)
	
insert into professor 
	values('92502', '740101*1830264', '장민석', '925', '부교수', 2005)
	
	
SELECT *FROM course	
	
insert into course values('C101', '전산개론', 3)

insert into course values('C102', '자료구조', 3)

insert into course values('C103', '데이터베이스', 4)

insert into course values('C301', '운영체제', 3)

insert into course values('C302', '컴퓨터구조', 3)

insert into course values('C303', '이산수학', 4)

insert into course values('C304', '객체지향언어', 4)

insert into course values('C501', '인공지능', 3)

insert into course values('C502', '알고리즘', 2)


SELECT *FROM class

insert into class values('C101-01', 'C101', 2012, 1, 'A', '92301', '301호', 40)

insert into class values('C102-01', 'C102', 2012, 1, 'A', '92001', '209호', 30)

insert into class values('C103-01', 'C103', 2012, 1, 'A', '92501', '208호', 30)

insert into class values('C103-02', 'C103', 2012, 1, 'B', '92301', '301호', 30)

insert into class values('C501-01', 'C501', 2012, 1, 'A', '92501', '103호', 45)

insert into class values('C501-02', 'C501', 2012, 1, 'B', '92502', '204호', 25)

insert into class values('C301-01', 'C301', 2012, 2, 'A', '92502', '301호', 30)

insert into class values('C302-01', 'C302', 2012, 2, 'A', '92501', '209호', 45)

insert into class values('C502-01', 'C502', 2012, 2, 'A', '92001', '209호', 30)

insert into class values('C502-02', 'C502', 2012, 2, 'B', '92301', '103호', 26)


SELECT *FROM takes

insert into takes values('1292001', 'C101-01', 'B+')

insert into takes values('1292001', 'C103-01', 'A+')

insert into takes values('1292001', 'C301-01', 'A')

insert into takes values('1292002', 'C102-01', 'A')

insert into takes values('1292002', 'C103-01', 'B+')

insert into takes values('1292002', 'C502-01', 'C+')

insert into takes values('1292003', 'C103-02', 'B')

insert into takes values('1292003', 'C501-02', 'A+')

insert into takes values('1292301', 'C102-01', 'C+')

insert into takes values('1292303', 'C102-01', 'C')

insert into takes values('1292303', 'C103-02', 'B+')

insert into takes values('1292303', 'C501-01', 'A+')

UPDATE student
SET YEAR = YEAR + 1;

UPDATE PROFESSOR 
SET POSITION ='교수',dept_id='923'
WHERE name='고희석';

DELETE FROM PROFESSOR
WHERE name='김태석';

SELECT dept_name, name
FROM department, student
WHERE department.DEPT_ID =student.DEPT_ID

SELECT DISTINCT address
FROM	STUDENT

SELECT *
FROM STUDENT

SELECT name, year_emp,2023-year_emp
FROM PROFESSOR

SELECT student.name, student.stu_id, department.DEPT_NAME 
FROM student, DEPARTMENT
WHERE student.dept_id = department.DEPT_ID 

UPDATE STUDENT 
SET YEAR = YEAR -1;

SELECT student.STU_ID
FROM student, DEPARTMENT
WHERE student.dept_id = department.dept_id AND 
	student.YEAR = 3 AND
	department.dept_name='컴퓨터공학과'

SELECT name, stu_id
FROM STUDENT s 
WHERE YEAR = 3 OR YEAR = 4
order BY name, stu_id

SELECT name, stu_id
FROM STUDENT s 
WHERE YEAR = 3 OR YEAR = 4
order BY name desc, stu_id
	
SELECT student.name, department.DEPT_NAME
FROM student, DEPARTMENT
WHERE student.dept_id = department.DEPT_ID 

SELECT s.name, d.dept_name
FROM student s, department d
WHERE s.DEPT_ID = d.DEPT_ID 

SELECT name, adress
FROM student
WHERE address = '서울'

SELECT s2.name
FROM STUDENT s1, STUDENT s2
WHERE s1.ADDRESS = s2.ADDRESS and s1.name ='김광식'

SELECT name 이름, POSITION 직위, 2012-year_emp 재직연수
FROM PROFESSOR

SELECT *
FROM STUDENT
WHERE resident_id LIKE '%*2%'
OR resident_id LIKE'%*4%'

SELECT name
FROM STUDENT

SELECT name
FROM PROFESSOR

SELECT name
FROM STUDENT
UNION all
SELECT name
FROM PROFESSOR

SELECT dept_id
FROM STUDENT
UNION ALL
SELECT dept_id FROM PROFESSOR
 
SELECT s.stu_id
FROM student s, department d, takes t
WHERE  s.dept_id = d.dept_id AND
	t.stu_id = s.stu_id AND 
	dept_name ='컴퓨터공학과' AND grade = 'A+'
	
SELECT stu_id
FROM student s, department d
WHERE s.dept_id = d.dept_id AND dept_name='컴퓨터공학과'
INTERSECT
SELECT stu_id
from takes
WHERE grade = 'A+'

SELECT stu_id FROM student s, DEPARTMENT d 
WHERE s.dept_id = d.DEPT_ID AND dept_name = '산업공학과'
MINUS 
SELECT stu_id FROM TAKES 
WHERE GRADE ='A+'

SELECT title, credit, YEAR, semester
FROM COURSe , CLASS 
WHERE course.course_id = class.COURSE_ID


SELECT title, credit, YEAR, semester
FROM course LEFT OUTER JOIN CLASS
USING (course_id)

SELECT title, credit, YEAR, semester
FROM course, CLASS
WHERE course.COURSE_ID = class.COURSE_ID (+)

SELECT title, credit, YEAR, semester
FROM COURSE c RIGHT OUTER JOIN CLASS
USING (course_id)

SELECT title, credit, YEAR, semester
FROM course, CLASS
WHERE course.COURSE_ID (+) = class.course_id

SELECT title, credit, YEAR, semester
FROM COURSE FULL OUTER JOIN CLASS
USING (course_id)

SELECT * from student

SELECT count(*)
FROM STUDENT
WHERE YEAR = 3

SELECT * --count(*)
FROM STUDENT

SELECT count(dept_id)
FROM STUDENT

SELECT count(DISTINCT dept_id)
FROM STUDENT

SELECT count(*)
FROM STUDENT s, DEPARTMENT d
WHERE  s.dept_id = d.dept_id AND D.DEPT_NAME ='컴퓨터공학과'

SELECT * FROM emp

SELECT COUNT(job)
FROM EMP 
WHERE job LIKE'SALESMAN%'

SELECT COUNT(*)
FROM EMP
WHERE JOB='SALESMAN'
AND SAL>=1500

SELECT SUM(SAL) 
FROM EMP
WHERE JOB='SALESMAN'

SELECT *
FROM DEPT

SELECT *
FROM EMP

SELECT SUM(SAL)
FROM DEPT, EMP
WHERE DEPT.DEPTNO=EMP.DEPTNO
AND DNAME='RESEARCH'

SELECT avg(2023-YEAR_emp)
FROM PROFESSOR

SELECT avg(SAL)
FROM EMP
WHERE job like 'CLERK%'

SELECT avg(SAL)
FROM EMP
WHERE job like 'SALESMAN%'

SELECT avg(SAL)
FROM EMP
WHERE job like 'MANAGER%'

SELECT avg(SAL)
FROM EMP
WHERE job like 'ANALYST%'

SELECT avg(SAL)
FROM EMP
WHERE job like 'PRESIDENT%'

SELECT max(sal), min(sal), avg(SAL), sum(SAL)
FROM EMP e  , DEPT  d
WHERE e.deptno = d.deptno AND dname = 'ACCOUNTING'

SELECT *FROM emp

SELECT *FROM dept

SELECT *FROM STUDENT

SELECT dept_id, count(*)
FROM STUDENT
GROUP BY dept_id

SELECT dept_name, count(*)
FROM STUDENT s , DEPARTMENT d 
WHERE s.dept_id = d.DEPT_ID
group BY dept_name

SELECT dname, COUNT(*), avg(sal), max(sal), min(sal)
FROM EMP e , dept d 
WHERE e.deptno = d.deptno
GROUP BY dname
ORDER BY dname

SELECT  dept_name, COUNT(*), avg(2012-year_emp), max(2012-year_emp)
FROM PROFESSOR p, department d
WHERE p.dept_id = d.dept_id 
GROUP BY dept_name
HAVING avg(2012-year_emp) >= 10

SELECT dname, count(*), avg(sal), max(sal), min(sal)
FROM EMP e , DEPT d 
WHERE e.deptno = d.DEPTNO 
GROUP BY dname
HAVING count(*) >= 5

SELECT *
FROM EMP
WHERE comm IS null

SELECT *
FROM EMP
WHERE comm IS NOT NULL

SELECT *
FROM EMP
WHERE comm != 1400

SELECT COUNT(comm)
FROM EMP e 
WHERE comm IS NULL 


SELECT * --stu_id
FROM TAKES
WHERE grade != 'A+'


SELECT * FROM COURSE

SELECT * FROM class

SELECT title
FROM COURSE 
WHERE course_id IN 
			(SELECT DISTINCT COURSE_ID
			FROM CLASS
			WHERE classroom = '301호')

SELECT DISTINCT title
FROM course c1, class c2
WHERE c1.course_id = c2.course_id AND classroom = '301호'

SELECT title
FROM COURSE
WHERE course_id NOT IN 
				(SELECT DISTINCT course_id
				FROM CLASS
				WHERE YEAR = 2012 AND semester = 2)


				
CREATE OR REPLACE VIEW v_takes AS
				SELECT stu_id, class_id
				FROM takes

SELECT *
FROM v_takes