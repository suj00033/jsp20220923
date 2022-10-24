-- alter table : 테이블 수정
-- add column : 컬럼 추가
CREATE TABLE MyTable19 (
	col1 INT,
    col2 INT
);
ALTER TABLE MyTable19
ADD COLUMN col3 INT; -- col3 추가myCustomersmyTable08

DESC MyTable19;

ALTER TABLE MyTable19
ADD COLUMN col4 INT NOT NULL UNIQUE DEFAULT 0;

ALTER TABLE MyTable19
ADD COLUMN col5 INT FIRST; -- 첫번째 컬럼에 넣고싶다

ALTER TABLE MyTable19
ADD COLUMN col6 INT AFTER col2; -- col2 뒤에 만들겠다

-- col7 컬럼 추가
-- type : VARCHAR(255)
-- constraints : NOT NULL, UNIQUE, DEFAULT 'empty'

ALTER TABLE MyTable19
ADD COLUMN col7 VARCHAR(255) NOT NULL UNIQUE DEFAULT 'empty';

DROP TABLE  if exists MyTable19;