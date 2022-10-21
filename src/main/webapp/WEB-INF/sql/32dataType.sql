USE mydb1;

-- data type
-- 문자열
-- VARCHAR, CHAR

-- 수 형태
-- INT, DEC

-- 날짜
-- DATE, DATETIME

-- 문자열
-- VARCHAR(size) : size까지의 문자열 저장
CREATE TABLE myTable01 (
	col1 VARCHAR(5), 
    col2 VARCHAR(2) -- 두개의 문자까지 저장
);
INSERT INTO myTable01 (col1, col2)
VALUES ('abcde', 'ab');
INSERT INTO myTable01 (col1, col2)
VALUES ('abc ', 'a ');
INSERT INTO myTable01 (col1, col2)
VALUES ('abcde', 'abc'); -- not ok, 'abc'가 2개의 사이즈를 초과하기때문에 실행x

SELECT * FROM myTable03;
SELECT * FROM myTable01;

-- 이름 : VARCAHR(50)
-- 주소 : VARCHAR(255)

-- CHAR : 고정길이 데이터 저장
-- CHAR(size) : size만큼 저장됨
CREATE TABLE myTable03 (
	col1 VARCHAR(3), -- java에서는 getString으로
    col2 CHAR(3)
);

INSERT INTO myTable03 (col1, col2)
VALUES ('abc', 'abc'); -- ok
INSERT INTO myTable03 (col1, col2)
VALUES ('abc', 'abcd'); -- nok
INSERT INTO myTable03 (col1, col2)
VALUES ('ab', 'ab'); -- ok ('ab', 'ab ')
