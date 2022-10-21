-- UNIQUE : 같은 값을 가질 수 없음
CREATE TABLE MyTable17(
	col1 INT,
    col2 INT UNIQUE
);
INSERT INTO MyTable17 (col1, col2) VALUES (1, 10);
SELECT * FROM MyTable17;
INSERT INTO MyTable17 (col1, col2) VALUES (1, 2);
INSERT INTO MyTable17 (col1, col2) VALUES (1, 1);
INSERT INTO MyTable17 (col1, col2) VALUES (1, 2); -- 1, 2는 이미 있기 때문에 안됨, Not ok

DESC MyTable17;