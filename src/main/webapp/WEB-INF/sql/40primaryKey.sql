-- PRIMARY KEY : NOT NULL, UNIQUE 조합
CREATE TABLE MyTable18 (
	col1 INT,
    col2 INT NOT NULL UNIQUE,
    col3 int PRIMARY KEY
);

DESC MyTable18;
INSERT INTO MyTable18 (col1, col2, col3) VALUES (1, 1, 1);
INSERT INTO MyTable18 (col1, col2, col3) VALUES (1, 2, 2);
INSERT INTO MyTable18 (col1, col2, col3) VALUES (1, 2, 2); -- col2, col3 같아서 안됨
INSERT INTO MyTable18 (col1, col2, col3) VALUES (1, 2, 3); -- col2에 이미 값이 있어서 안됨
INSERT INTO MyTable18 (col1, col2, col3) VALUES (2, 3, 4);
INSERT INTO MyTable18 (col1, col2) VALUES (1, 4); -- col3 NOT NULL 제약사항 때문에 안됨
SELECT * FROM MyTable18;