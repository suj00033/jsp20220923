USE prj1;
CREATE TABLE Member (
 id VARCHAR(255) PRIMARY KEY,
 password VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL UNIQUE,
 inserted DATETIME DEFAULT NOW()
);

	SELECT
  		id,
  		'숨김' password,
  		email,
  		inserted
  	FROM 
  		Member
  	ORDER BY
  		id;

DESC Member;

-- Mamber 테이블에 nickName 추가
-- nickName을 안넣으면 id랑 같은 값을 줌
ALTER TABLE Member
ADD COLUMN nickName VARCHAR(255) NOT NULL UNIQUE DEFAULT id AFTER id;

SELECT * FROM Member;


