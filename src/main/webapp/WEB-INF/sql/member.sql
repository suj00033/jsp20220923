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

-- 가입글 찾기
select * FROM MEMBER;

DESC Member;
