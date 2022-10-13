-- NULL : 필드(컬럼)에 값이 없음
SELECT * FROM Employees;

-- NULL인 필드가 레코드 조회
SELECT * FROM Employees
WHERE Notes IS NULL;

-- NULL인 아닌 필드 레코드 조회
SELECT * FROM Employees
WHERE Notes IS NOT NULL;

SELECT * FROM Employees
WHERE NOT Notes IS NULL; -- 이것도 가능함

SELECT * FROM Customers;

INSERT INTO Customers (CustomerName, ContactName, Address, City, Country)
VALUES ('Han\s kimbab', 'Han you', 'Seoul Gangnum', 'Seoul', 'Korea');

DESC Customers; -- DESCRIBE : 테이블 구조 조회, 제약사항(Constraints) 조회
			    -- NULL필드 : 빈칸으로 냅둘수있는가의 여부
                -- Key : 다른 레코드와 중복된 값이 갖지 못함
                -- Extra : 자동으로 1값이 증가한다(auto_increment)