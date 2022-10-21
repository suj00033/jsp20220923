-- table명, 컬럼명 작성 관습
-- 회사의 규칙 따라야 함

-- 대소문자 구분안함
-- snake_lower_case
-- your_car_name
CREATE TABLE myTable10 (
	yourCarName VARCHAR(255)
);

-- 우리 강의에서는 
-- 컬럼명은 lowerCamelCase
-- 테이블명은 UpperCamelCase
INSERT INTO myTable10 (yourCarName) VALUES ('KIA');
INSERT INTO myTable10 (yourcarname) VALUES ('Tesla');

SELECT * FROM myTable10;
SELECT * FROM mytable10; -- 우리 버전에서는 안됨