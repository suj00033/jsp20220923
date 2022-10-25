USE mydb6;
-- UNION : 두개의 테이블을 합집합으로 (중복제거된 상태로 출력)
SELECT * FROM TableA
UNION
SELECT * FROM TableB;

-- UNION ALL : 중복 포함된 상태로 합집합 출력 (CROSS, FULL OUTER와 같음)
SELECT * FROM TableA
UNION ALL
SELECT * FROM TableB;

-- FULL OUTER JOIN
SELECT * FROM TableA a LEFT JOIN TableB b ON a.co1 = b.c1
UNION
SELECT * FROM TableA a RIGHT JOIN TableB b ON a.co1 = b.c1;

-- 파일 58은 leetcode파일로 대체