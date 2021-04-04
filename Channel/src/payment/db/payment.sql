DROP SEQUENCE PAYMEMBERSEQ;
DROP SEQUENCE PAYMENTSEQ;

DROP TABLE PAYMENT;

CREATE SEQUENCE PAYMEMBERSEQ;
CREATE SEQUENCE PAYMENTSEQ;

--회원번호
--결제번호
--결제자
--결제자 이메일
--결제자 전화번호

--결제방법
--결제금액
--결제시각

--imp_uid: 아임포트 거래 고유번호
--merchant_uid: 가맹점에서 생성 관리하는 고유 주문번호
--결제금액 : 
--PG사(상점아이디)	:
--PG승인번호(카드사승인번호)
--결제시각:
--결제상태:

--제약조건 없는 테이블
CREATE TABLE PAYMENT(
	PAY_MEMBER_NO NUMBER,
	PAY_NO NUMBER NOT NULL,
	PAY_NAME VARCHAR2(100) NOT NULL,
	PAY_EMAIL VARCHAR2(100) NOT NULL,
	PAY_PHONE VARCHAR2(100) NOT NULL,
	PAY_TYPE VARCHAR2(100) NOT NULL,
	PAY_PRICE VARCHAR2(100) NOT NULL,
	PAY_DATE DATE NOT NULL
);


CREATE TABLE PAYMENT(
	PAY_MEMBER_NO NUMBER,
	PAY_NO NUMBER NOT NULL,
	PAY_NAME VARCHAR2(100) NOT NULL,
	PAY_EMAIL VARCHAR2(100) NOT NULL,
	PAY_PHONE VARCHAR2(100) NOT NULL,
	PAY_TYPE VARCHAR2(100) NOT NULL,
	PAY_PRICE VARCHAR2(100) NOT NULL,
	PAY_DATE DATE NOT NULL,
	CONSTRAINT FK_PAYMEMBER_NO FOREIGN KEY (PAY_MEMBER_NO) REFERENCES MEMBER (MEMBER_NUM)
);


INSERT INTO PAYMENT
VALUES(PAYMEMBERSEQ.NEXTVAL, PAYMENTSEQ.NEXTVAL, '결제자', '결제이메일', '결제연락처', '결제방법', '결제금액', SYSDATE);


INSERT INTO PAYMENT
VALUES(27, 1, '장보옥', '111@email.com', '111-1111-1111', 'CREDIT', '15000', SYSDATE);

INSERT INTO PAYMENT
VALUES(27, 2, '장보옥', '111@email.com', '111-1111-1111', 'CREDIT', '15000', SYSDATE);

INSERT INTO PAYMENT
VALUES(23, 2, '장보옥', '111@email.com', '111-1111-1111', 'CREDIT', '15000', SYSDATE);
INSERT INTO PAYMENT
VALUES(25, 2, '장보옥', '111@email.com', '111-1111-1111', 'CREDIT', '15000', SYSDATE);


--테이블 결과 -payment전체 row
SELECT PAY_MEMBER_NO, PAY_NO, PAY_NAME, PAY_EMAIL, PAY_PHONE, PAY_TYPE, PAY_PRICE, PAY_DATE
FROM PAYMENT
ORDER BY PAY_MEMBER_NO DESC, PAY_MEMBER_NO;


--테이블 결과 -id에 해당하는 payment row
SELECT PAY_DATE FROM
(SELECT PAY_MEMBER_NO, PAY_NO, PAY_NAME, PAY_EMAIL, PAY_PHONE, PAY_TYPE, PAY_PRICE, PAY_DATE, ROWNUM 
FROM PAYMENT ORDER BY PAY_DATE DESC) WHERE ROWNUM = 1;

--select * from login where id=#{id}
SELECT * FROM MEMBER WHERE MEMBER_ID = 77;


SELECT PAY_DATE FROM
(SELECT PAY_MEMBER_NO, PAY_NO, PAY_NAME, PAY_EMAIL, PAY_PHONE, PAY_TYPE, PAY_PRICE, PAY_DATE, ROWNUM 
FROM member
WHERE MEMBER_NO = 27
ORDER BY PAY_DATE DESC) WHERE ROWNUM = 1;

--조회
SELECT PAY_MEMBER_NO, PAY_NO, PAY_NAME, PAY_EMAIL, PAY_PHONE, PAY_TYPE, PAY_PRICE, PAY_DATE 
FROM PAYMENT
WHERE PAY_MEMBER_NO = 27
ORDER BY PAY_DATE DESC;


--조인한 테이블
select m.*, p.* from member m, payment p where m.member_num=p.pay_member_no ;

