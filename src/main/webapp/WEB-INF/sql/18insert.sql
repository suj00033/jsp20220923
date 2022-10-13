USE w3schools;

-- INSERT INTO : 테이블에 레코드 추가하는 명령문

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (10, 'Son', 'HM', '1999-01-01', 'EmpID10.pic', 'soccer player');

SELECT * FROM Employees;

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (11, 'EL', 'gacia', '2022-06-01', 'ROA.pic', 'game player');

-- 12번째 직원 추가, notes 컬럼 제외
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo) -- notes가 없기 때문에 컬럼과 밸류가 맞지않아 오류남
VALUES (12, 'BL', 'Panda', '1996-09-01', 'hu.pic');

INSERT INTO Employees (EmployeeID, LastName, FirstName, Photo)
VALUES (13, 'Withe', 'Panda', 'huh.pic');

-- 새 직원 추가, EmployeeID컬럼 빼고 추가
INSERT INTO Employees (LastName, FirstName, Notes)
VALUES ('Song', 'kiin', ''); -- ''을 넣으면 null이 안나옴

-- NULL 값이 없음을 뜻함
