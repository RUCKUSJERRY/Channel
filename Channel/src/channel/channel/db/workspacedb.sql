DROP SEQUENCE WORKSPACESEQ;
DROP TABLE WORKSPACE;

CREATE SEQUENCE WORKSPACESEQ;
CREATE TABLE WORKSPACE (
	
	WORKSPACE_SEQ 			INT 				NOT NULL,
	WORKSPACE_NAME 			VARCHAR2(100) 		NOT NULL,
	WORKSPACE_INFORMATION 	VARCHAR2(1000)	 	NOT NULL,
	MEMBER_ID				VARCHAR2(50)		NOT NULL,
	WORKSPACE_REGDATE		DATE 				NOT NULL
	
	CONSTRAINT WORKSPACE_PK PRIMARY KEY(WORKSPACE_SEQ)
	
);
