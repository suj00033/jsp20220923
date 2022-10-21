-- CHECK : 조건에 맞는 데이터만 입력 가능
CREATE TABLE MyTable16(
	col1 INT,
    col2 INT,
    CHECK (col2 >= 0) -- 음수로 들어가면 안됨
);

INSERT INTO MyTable16 (col1, col2) VALUES (333, 33333);
INSERT INTO MyTable16 (col1, col2) VALUES (-333, 33333);
INSERT INTO MyTable16 (col1, col2) VALUES (333, -33333); -- col2에는 음수가 안되기 때문에 not ok

SELECT * FROM MyTable16;