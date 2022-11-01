CREATE TABLE Bank (
    account INT PRIMARY KEY,
    balance INT NOT NULL DEFAULT 0
);

INSERT INTO Bank (account, balance)
VALUES (1, 10000), (2, 50000);

UPDATE Bank
SET balance = balance + (-500)
WHERE account = 2;

USE Bank;
 
SELECT * FROM Bank;

SELECT * FROM Customers ORDER BY 1 DESC;

SELECT * FROM Customers;

CREATE DATABASE prj1;
USE prj1;
-- 강제로 id 부여
CREATE TABLE Board(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(1000) NOT NULL
);
SELECT * FROM Board ORDER BY 1 DESC;

DESC Board;



-- 작성자 컬럼 추가
ALTER TABLE Board
ADD COLUMN writer VARCHAR(255) NOT NULL;

-- 작성일시 컬럼 추가
ALTER TABLE Board
ADD COLUMN inserted DATETIME DEFAULT NOW();

SELECT id, title, writer, inserted
FROM Board
ORDER BY id DESC;

SELECT id, title, content, writer, inserted
FROM Board
WHERE id = ?;

-- 여러 게시물 추가하기
INSERT INTO Board (title, content, writer)
SELECT title, content, writer FROM Board;

SELECT COUNT(*) FROM Board;

-- page 처리 쿼리
SELECT
*
FROM Board
LIMIT ?, ?; -- 첫번째 ?:어디서부터 (0번데이터, 제로베이스, 0부터 10[1페이지] / 10부터 20[2페이지] )
            -- 두번째 ?: 몇 개 보여줄 것인가 (몇개는 바뀌지 않는다)
            
SELECT Count(*) FROM Board;

-- count All         lastPage
-- 1~10                 1
-- 11~20                2
-- 21~30                3
-- 31~40                4
--   n개                ?

-- 검색쿼리
SELECT *
FROM Board
WHERE title LIKE '%keyword%'
   OR content LIKE '%keyword%'
   OR writer LIKE '%keyword%';
   
DESC Board;
select * from Board