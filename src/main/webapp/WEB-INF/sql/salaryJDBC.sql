CREATE TABLE Salary (
	EmployeeID INT PRIMARY KEY,
    Salary INT DEFAULT 0
);

INSERT INTO Salary (EmployeeID, Salary)
VALUES (1, 1000), (2, 2000), (3, 2000), (4, 1000), (5, 1500), (6, 2000), (7, 3000), (8, 3500), (9, 3500);

SELECT * FROM Salary;
SELECT * FROM Employees;
INSERT INTO Salary (EmployeeID, Salary) VALUES (?);
INSERT INTO Employees (FirstName, LsatName, Salary) VALUES (?, ?, ?) 