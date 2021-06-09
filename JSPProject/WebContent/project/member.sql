CREATE TABLE IF NOT EXISTS login_member(
	id VARCHAR(20) NOT NULL,
	passwd VARCHAR(20),
	name VARCHAR(30),
	phone_num VARCHAR(20),
	email VARCHAR(40),
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS BBS (
	bbsID INT(11),
	bbsTitle VARCHAR(50),
	userID VARCHAR(20),
	bbsDate DATETIME,
	bbsContent VARCHAR(2048),
	bbsAvailable INT(11),
	
	PRIMARY KEY(bbsID)
);