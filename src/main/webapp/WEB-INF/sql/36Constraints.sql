-- NOT NULL : NULL이면 안됨
CREATE TABLE MyTable11 (
	col1 VARCHAR(255),
    col2 VARCHAR(255) NOT NULL
);

DESC MyTable11; -- NULL이 NO로 설정

INSERT INTO MyTable11 (col1, col2) VALUES ('a', 'b');
INSERT INTO MyTable11 (col2) VALUES ('c'); -- c만 들어감
INSERT INTO MyTable11 (col1) VALUES ('d'); -- not ok

SELECT * FROM MyTable12;

CREATE TABLE MyTable12 (
	col1 INT,
    col2 INT NOT NULL
);

INSERT INTO MyTable12 (col1) VALUES (2); -- nor ok
INSERT INTO MyTable12 (col1, col2) VALUES (3, 5);