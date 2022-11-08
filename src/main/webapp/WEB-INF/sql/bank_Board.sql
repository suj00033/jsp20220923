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


USE prj1;

-- 댓글 테이블 만들기
CREATE TABLE Reply (
    id INT PRIMARY KEY AUTO_INCREMENT,
    boardId INT NOT NULL,
    content VARCHAR(1000) NOT NULL,
    inserted DATETIME DEFAULT NOW(),
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

DESC Reply;

SELECT * FROM Reply;

-- 댓글 수가 결과로 같이 나오는 Board Table 조회 쿼리 작성
SELECT
    b.id,
    b.title,
    b.writer,
    b.inserted,
    COUNT(r.id) countReply
FROM Board b LEFT JOIN Reply r On b.id = r.boardId
GROUP BY b.id
ORDER BY b.id DESC;
-- 댓글없는 게시물도 가져와야하므로 LEFT JOIN을 사용
-- 게시글 id로 댓글 카운트

-- 댓글 입력 시간 변경
SELECT * FROM Reply WHERE boardId = 1019 ORDER BY id DESC;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 6 DAY) WHERE id = 60;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 15 DAY) WHERE id = 59;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 60 DAY) WHERE id = 58;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 400 DAY) WHERE id = 57;
UPDATE Reply SET inserted = DATE(NOW()-INTERVAL 800 DAY) WHERE id < 57;

-- 파일 테이블 만들기
CREATE TABLE File (
    id INT PRIMARY KEY AUTO_INCREMENT,
    boardId INT NOT NULL,
    name VARCHAR(512) NOT NULL,
    FOREIGN KEY (boardId) REFERENCES Board(id)
);

DESC File;
SELECT * FROM Reply;



DESC Board;

SELECT * FROM File ORDER BY 1 DESC;

-- 여러 파일첨부를 보는 쿼리