-- DATA TYPE
-- Numeric
-- INT : 정수
-- DEC : 소수점 있는 형식

USE mydb1;
CREATE TABLE myTable05(
	col1 INT(3) ZEROFILL, -- 자릿수를 보여줌, 부족한 자리를 0으로 채움
    col2 INT(4) ZEROFILL,
    col3 INT -- 기본값(-21억 ~ 21억)
);

SELECT * FROM myTable05;
INSERT INTO myTable05 (col1, col2, col3)
VALUES (22, 22, 22); -- ok

INSERT INTO myTable05 (col1, col2, col3)
VALUES (999, 9999, 4200000000); -- col3 넘어가서 안됨, not ok
SELECT * FROM myTable05;
INSERT INTO myTable05 (col1, col2, col3)
VALUES (9999, 9999, 2100000000); 
-- 

-- DEC : 소수점이 있는 형식 수 저장
CREATE TABLE myTable06 (
	col1 DEC(3, 1), -- 총 길이 3, 소수점 아래 1
    col2 DEC(5, 2) -- 총 길이 5, 소수점 아래 2
);
SELECT * FROM myTable06;
INSERT INTO myTable06 (col1, col2)
VALUES (10.5, 200.01); -- ok
INSERT INTO myTable06 (col1, col2)
VALUES (100.5, 200.01); -- col1 넘어가서 not ok
INSERT INTO myTable06 (col1, col2)
VALUES (10.55, 200.01); -- 10.55가 잘리면서 10.6으로 변환됨

-- INT -> JAVA에서는 int, long
-- DEC -> JAVA에서 double, BigDecimal(금융계와 과학계에서 자주 사용)

