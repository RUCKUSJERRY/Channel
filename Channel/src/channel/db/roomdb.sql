DROP TABLE CHANNELROOM;
DROP SEQUENCE CHANNELROOMSEQ;

CREATE SEQUENCE CHANNELROOMSEQ;
CREATE TABLE CHANNELROOM (
	
	CHANNEL_NUM 		INT 				NOT NULL,
	CHANNEL_NAME 		VARCHAR2(100) 		NOT NULL,
	CHANNEL_INFORMATION VARCHAR2(1000)	 	NOT NULL,
	CHANNEL_ENABLED 	VARCHAR2(2) 		NOT NULL,
	CHANNEL_REGDATE 	DATE 				NOT NULL,
	
	CONSTRAINT CHANNELROOM_PK PRIMARY KEY (CHANNEL_NUM),
	CONSTRAINT CHANNELROOM_ENABLED_CHK CHECK (CHANNEL_ENABLED IN ('Y','N'))

);

INSERT INTO CHANNELROOM
VALUES (CHANNELROOMSEQ.NEXTVAL, '전체채팅방', '모든직원용/나가기/삭제불가', 'Y', SYSDATE);

INSERT INTO CHANNELROOM
VALUES (CHANNELROOMSEQ.NEXTVAL, '경영진채팅방', '임원용', 'Y', SYSDATE);

INSERT INTO CHANNELROOM
VALUES (CHANNELROOMSEQ.NEXTVAL, '영업채팅방', '영업인용', 'Y', SYSDATE);

INSERT INTO CHANNELROOM
VALUES (CHANNELROOMSEQ.NEXTVAL, '개발채팅방', '개발자용', 'Y', SYSDATE);

SELECT * FROM CHANNELROOM
ORDER BY CHANNEL_NUM;

SELECT CHANNEL_NUM, CHANNEL_NAME, CHANNEL_INFORMATION, CHANNEL_ENABLED, CHANNEL_REGDATE
		FROM CHANNELROOM
		WHERE CHANNEL_NAME IN (SELECT CHANNEL_NAME FROM ROOMMEMBER WHERE MEMBER_ID = 'admin');
		
SELECT CHANNEL_NUM, CHANNEL_NAME, CHANNEL_INFORMATION, MEMBER_ID, CHANNEL_ENABLED, CHANNEL_REGDATE
		FROM CHANNELROOM
		WHERE CHANNEL_NUM = '1';
		
		SELECT COUNT(*)
		FROM CHANNELROOM
		WHERE CHANNEL_MASTER = '11'
		
ALTER TABLE CHANNELROOM
RENAME COLUMN CHANNEL_MASTER TO MEMBER_ID;