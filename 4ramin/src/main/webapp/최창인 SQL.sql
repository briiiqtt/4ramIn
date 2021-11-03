-------------------- 유저 테이블 ---------------------------------
CREATE TABLE users (
	user_id	        varchar2,	    -- 유저 아이디
	user_passwor	varchar2,	    -- 유저 패스워드
	user_name       varchar2,   	-- 유저 이름
    user_phone	    varchar2,    	-- 유저 연락처
	user_email	    varchar2,       -- 
	user_auth       varchar2(10)	
);