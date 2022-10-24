CREATE DATABASE mydb2;
USE mydb2;
CREATE TABLE Products AS
SELECT * FROM w3schools.Products;
CREATE TABLE Categories AS SELECT * FROM w3schools.Categories;

DESC Products;
DESC Categories; 
ALTER TABLE Products ADD PRIMARY KEY (ProductID); -- 프리마리키 부여
ALTER TABLE Categories ADD PRIMARY KEY (CategoryID); 

ALTER TABLE Products ADD FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID); -- 참조키 부여

SELECT * FROM Categories;
SELECT * FROM Products;

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('toy', 1, 9, '1ea', '30'); -- not ok, foreign key 제약사항을 위반했기 때문에 생성x

INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price)
VALUES ('toy', 1, 7, '1ea', '30'); -- ok, foreign key 제약사항 위반안했음 있는 카테고리ID(1~8)에 값을 줬기 때문에