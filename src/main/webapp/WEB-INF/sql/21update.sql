-- 여러행 한번에 수정
SELECT * FROM Customers WHERE Country = 'UK';

UPDATE Customers
SET PostalCode = '00000'
WHERE Country = 'Mexico';  
/* safe 오류뜸 10:27:57	UPDATE Customers SET PostalCode = '00000' WHERE Country = 'Mexico'	
Error Code: 1175. You are using safe update mode and you tried to update a table 
without a WHERE that uses a KEY column To disable safe mode, toggle the option in Preferences 
-> SQL Editor and reconnect.	0.000 sec
SAFE UPDATE MODE 를 쓴 이후 수정가능
*/

-- DESC : 테이블 구조 조회
DESC Customers;
-- Key 각 컬럼이 각자 다른값을 갖고있어야함

-- SAFE UPDATE MODE -> disable 잘안씀
SET SQL_SAFE_UPDATES=0;

-- USA 국가의 고객들의 City를 New York으로 변경
UPDATE Customers
SET City = 'New York'
WHERE Country = 'USA';

-- UK 국가의 고객들의 Address를 GangNam으로 변경
UPDATE Customers
SET Address = 'GangNam'
WHERE Country = 'UK';