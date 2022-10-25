CREATE DATABASE mydb6;
USE mydb6;

CREATE TABLE TableA (
	col1 INT
);

CREATE TABLE TableB (
	c1 INT
);

INSERT INTO TableA (col1)
VALUES (1), (2), (3), (4), (5);
INSERT INTO TableB (c1)
VALUES (2), (4), (5), (7), (8);
SELECT * FROM TableA;

-- INNER JOIN (교집합) : 두 컬럼의 값이 공통된 값만 조회
SELECT * FROM TableA A JOIN TableB B ON A.col1 = B.c1;
-- INNER : 키워드 생략 가능, INNER와 CROSS 똑같다, CROSS는 잘안씀
SELECT * FROM TableA A INNER JOIN TableB B ON A.col1 = B.c1;
SELECT * FROM TableA A CROSS JOIN TableB B ON A.col1 = B.c1;

-- LEFT OUTER JOIN : INNER JOIN 결과 + 왼쪽 테이블의 레코드들
SELECT * FROM TableA A LEFT OUTER JOIN TableB B ON A.col1 = B.c1;
-- OUTER : 키워드 생략 가능
SELECT * FROM TableA A LEFT JOIN TableB B ON A.col1 = B.c1;

-- RIGHT OUTER JOIN : INNER JOIN 결과 + 오른쪽 테이블의 레코드들
SELECT * FROM TableA A RIGHT JOIN TableB B ON A.col1 = B.c1;