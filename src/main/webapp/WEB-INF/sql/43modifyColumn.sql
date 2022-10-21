-- MODIFY COLUMN : 컬럼 수정
-- 변경하는 데이터의 타입, 제약사항을 이미 있는 데이터가 위반하고 있지 않는지 먼저 확인
DESC MyTable19;
ALTER TABLE MyTable19 MODIFY COLUMN col1 INT NOT NULL; -- 추가할 타입 추가할 제약사항

SELECT * FROM MyTable19;

INSERT INTO MyTable19 (col1, col6, col3, col4)
VALUES (3, 3, 3, 3);

ALTER TABLE MyTable19 MODIFY COLUMN col2 INT NOT NULL; -- 이미 col2가 NULL이므로 변경x

ALTER TABLE MyTable19 MODIFY COLUMN col3 VARCHAR(255) UNIQUE;