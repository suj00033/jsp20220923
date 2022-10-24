DESC Student; -- 제1정규화 완벽한 상태
-- 학생의 연락처 추가
--  학생 테이블 컬럼들: id, name, age, gender, 
-- 연락처1, 연락처2, 연락처3 > 연락처는 원자화가 안되었으므로 따로 연락처 테이블을 빼야함
-- 이름, 나이, 성별은 중복이 있을 수 있으므로 id로 참조키를 만든다
--  연락처 테이블 컬럼들: studentId, 연락처

-- ex) 학생 테이블의 행
-- 1, 'kim', 30, 'M'
-- 2, 'lee', 23, 'F'
-- 연락처 테이블의 행
-- 1, '223-1232-1312'
-- 1, '231-3362-8892'
-- 2, '827-8267-9081'
-- 2, '231-3362-8892' 비상연락망이 중복될 수 있으므로 두가지 중 한가지 방법을 사용한다

-- 1) 두개의 컬럼을 묶어서 PK키
CREATE TABLE Contact (
	student INT,
    contact VARCHAR(255),
    PRIMARY KEY (studentId, contact)
);
DESC Contact;

-- 2) 인위적인 키 컬럼 추가
CREATE TABLE Contact(
	id INT PRIMARY KEY AUTO_INCREMENT,
    studentId INT,
    contact VARCHAR(255)
);
DESC Contact;

-- FOREIGN KEY : 한 컬럼의 값이 다른 테이블의 컬럼을 참조함
-- 외래키, 참조키, FK키

-- FOREIGN KEY 제약사항
CREATE TABLE Contact (
	id INT PRIMARY KEY AUTO_INCREMENT,
    studentId INT,
    contact VARCHAR(255),
    FOREIGN KEY (studentId) REFERENCES Student(id) -- 제약사항 추가
);

SELECT * FROM Student;
INSERT INTO Contact (studentId, contact)
VALUES (1, '223-1232-1312');
INSERT INTO Contact (studentId, contact)
VALUES (3, '827-8267-9081');
INSERT INTO Contact (studentId, contact)
VALUES (3, '827-8267-9372');
INSERT INTO Contact (studentId, contact)
VALUES (4, '827-8267-9372'); -- 참조하려는 id4가 존재하지않았기 때문에 추가 불가능
INSERT INTO Contact (studentId, contact)
VALUES (NULL, '827-8267-9372'); -- NOT NULL 제약사항이 없기 때문에 NULL 넣을 수 있음
SELECT * FROM Contact;

-- 부모 테이블의 레코드가 삭제될 경우
DELETE FROM Student WHERE id = 3; -- 먼저 삭제될 수 없음, 자식 레코드를 먼저 삭제해야 삭제 가능

-- 자식 테이블 삭제
DELETE FROM Contact WHERE StudentId = 3;
-- 이후 부모 테이블 삭제

DELETE FROM Student WHERE id = 3;

SELECT * FROM Contact;
SELECT * FROM Student;