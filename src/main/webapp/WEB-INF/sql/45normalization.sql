-- 한 컬럼이 다른 컬럼에 종속되어있을때 테이블을 따로 빼서 만들어라

USE w3schools;
SELECT * FROM MyProducts;
-- 상품명, 유닛, 가격, 카테고리명, 카테고리 설명
CREATE TABLE MyProducts (
	productName VARCHAR(255),
    unit VARCHAR(255),
    price DEC(10, 2),
    categoryName VARCHAR(255),
    description VARCHAR(255)
);

-- Product 테이블 정규화 전
-- 상품명, 유닛, 가격, 카테고리명, 카테고리설명, 공급자명, 공급자주소 -> 카테고리설명은 카테고리명(suppierID가 참조키)에 종속
--                                                                    -> 공급자주소는 공급자명에 종속