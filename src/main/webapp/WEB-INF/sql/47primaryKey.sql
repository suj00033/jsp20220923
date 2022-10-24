USE mydb2;
-- 학생 TABLE
-- id(임의의 기본키 설정), 이름, 나이, 성별
CREATE TABLE Student (
	id INT PRIMARY KEY AUTO_INCREMENT, -- primary key, 자동증가
	name VARCHAR(255),
	age INT,
    gender VARCHAR(1)
);

INSERT INTO Student (id, name, age, gender)
VALUES (1, 'kim', 30, 'F');
INSERT INTO Student (id, name, age, gender)
VALUES (2, 'lee', 40, 'M');

SELECT * FROM Student;
DESC Student;

DELETE FROM Student WHERE id = 2;

INSERT INTO Student (name, age, gender)
VALUES ('park', 50, 'M'); -- 2를 삭제했어도 자동증가 제약사항으로 인해 id는 계속 1씩 올라감
